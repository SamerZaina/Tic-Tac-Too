# create_tic_tac_toe_gif.py
from PIL import Image, ImageDraw, ImageFont
import os

def create_tic_tac_toe_gif():
    # Create output directory
    os.makedirs('output', exist_ok=True)
    
    # Board settings
    board_size = 300
    cell_size = board_size // 3
    padding = 10
    
    # Define game sequence (position: 0-8, player: 'X' or 'O')
    game_sequence = [
        (4, 'X'),  # X center
        (0, 'O'),  # O top-left
        (2, 'X'),  # X top-right
        (6, 'O'),  # O bottom-left
        (5, 'X'),  # X middle-right
        (3, 'O'),  # O middle-left
        (8, 'X'),  # X bottom-right (wins)
    ]
    
    # Create frames
    frames = []
    board = [' ' for _ in range(9)]
    
    # Initial empty board frame (show longer)
    for _ in range(10):
        frames.append(create_board_image(board, board_size, cell_size))
    
    # Add each move with animation
    for position, player in game_sequence:
        # Animate the move (3 frames for animation)
        for i in range(3):
            temp_board = board.copy()
            # Create growing effect
            if i == 0:
                # Small symbol
                frames.append(create_board_image(board, board_size, cell_size, 
                                                highlight=(position, player, 0.3)))
            elif i == 1:
                # Medium symbol
                frames.append(create_board_image(board, board_size, cell_size,
                                                highlight=(position, player, 0.6)))
            else:
                # Full symbol
                board[position] = player
                frames.append(create_board_image(board, board_size, cell_size,
                                                highlight=(position, player, 1.0)))
        
        # Hold frame after move
        for _ in range(5):
            frames.append(create_board_image(board, board_size, cell_size))
    
    # Final win animation (blinking)
    for _ in range(20):
        if _ % 2 == 0:
            # Highlight winning line (diagonal from top-right to bottom-right)
            frames.append(create_board_image(board, board_size, cell_size,
                                           highlight_line=[(2, 5, 8)]))
        else:
            frames.append(create_board_image(board, board_size, cell_size))
    
    # Save as GIF
    frames[0].save(
        'output/tic_tac_toe.gif',
        save_all=True,
        append_images=frames[1:],
        duration=100,  # milliseconds per frame
        loop=0,  # 0 = infinite loop
        optimize=True
    )
    
    print("✅ GIF created: output/tic_tac_toe.gif")
    print("📏
