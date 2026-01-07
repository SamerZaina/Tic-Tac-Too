# 🎮 Tic-Tac-Toe Animation

## 🎯 Watch the Game Unfold!

<!-- Animation using refresh meta tag - works when opening raw file -->
<!-- Note: This creates a slideshow effect when viewing the README raw -->

### 🎲 Game Animation

<details>
<summary><b>Click here to start the animation!</b></summary>

<br>

```
       |       |       
-------------------
       |       |       
-------------------
       |       |       
```

**⏳ Loading move 1...**

<details>
<summary><b>▶️ Click for X's move (center)</b></summary>

<br>

```
       |       |       
-------------------
       |   X   |       
-------------------
       |       |       
```

**Player X placed in center!**

<details>
<summary><b>▶️ Click for O's move (top-left)</b></summary>

<br>

```
   O   |       |       
-------------------
       |   X   |       
-------------------
       |       |       
```

**Player O took top-left corner!**

<details>
<summary><b>▶️ Click for X's move (top-right)</b></summary>

<br>

```
   O   |       |   X   
-------------------
       |   X   |       
-------------------
       |       |       
```

**Player X blocked with top-right!**

<details>
<summary><b>▶️ Click for O's move (bottom-left)</b></summary>

<br>

```
   O   |       |   X   
-------------------
       |   X   |       
-------------------
   O   |       |       
```

**Player O takes bottom-left!**

<details>
<summary><b>▶️ Click for X's winning move! (middle-right)</b></summary>

<br>

```
   O   |       |   X   
-------------------
       |   X   |   X   
-------------------
   O   |       |       
```

**X is about to win...**

<details>
<summary><b>🎯 Click for X's final move (bottom-right)</b></summary>

<br>

```
   O   |       |   X   
-------------------
       |   X   |   X   
-------------------
   O   |       |   X   
```

## 🏆 **X WINS!** 🎉

**Winning line: Diagonal from top-right to bottom-right!**

</details>
</details>
</details>
</details>
</details>
</details>

## 🎨 Alternative: Fancy ASCII Art Version

<details>
<summary><b>✨ Click for fancy board animation</b></summary>

<br>

**Frame 1: Empty Board**
```ascii
╔═══╦═══╦═══╗
║   ║   ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╚═══╩═══╩═══╝
```

<details>
<summary><b>Frame 2: X moves center</b></summary>

```ascii
╔═══╦═══╦═══╗
║   ║   ║   ║
╠═══╬═══╬═══╣
║   ║ ❌ ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╚═══╩═══╩═══╝
```
</details>

<details>
<summary><b>Frame 3: O moves corner</b></summary>

```ascii
╔═══╦═══╦═══╗
║ 🔵 ║   ║   ║
╠═══╬═══╬═══╣
║   ║ ❌ ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╚═══╩═══╩═══╝
```
</details>

<details>
<summary><b>Frame 4: Complete game</b></summary>

```ascii
╔═══╦═══╦═══╗
║ 🔵 ║ ❌ ║ 🔵 ║
╠═══╬═══╬═══╣
║ ❌ ║ ❌ ║ 🔵 ║
╠═══╬═══╬═══╣
║ 🔵 ║ 🔵 ║ ❌ ║
╚═══╩═══╩═══╝
```
**Result: Draw! 🤝**
</details>
</details>

## ⚡ Quick Terminal Animation Code

<details>
<summary><b>📟 Click to see Python code that creates real animation</b></summary>

```python
import time
import os

def clear(): os.system('clear' if os.name == 'posix' else 'cls')

def print_board(board):
    print(f" {board[0]} | {board[1]} | {board[2]} ")
    print("---+---+---")
    print(f" {board[3]} | {board[4]} | {board[5]} ")
    print("---+---+---")
    print(f" {board[6]} | {board[7]} | {board[8]} ")

def animate_game():
    board = [" "] * 9
    moves = [
        (4, "X"),  # Center
        (0, "O"),  # Top-left
        (2, "X"),  # Top-right
        (6, "O"),  # Bottom-left
        (5, "X"),  # Middle-right
        (3, "O"),  # Middle-left
        (8, "X"),  # Bottom-right
        (1, "O"),  # Top-middle
        (7, "X"),  # Bottom-middle
    ]
    
    for i, (pos, player) in enumerate(moves):
        clear()
        board[pos] = player
        print(f"Move {i+1}: {player} plays at position {pos}\n")
        print_board(board)
        time.sleep(1.5)
    
    print("\n🎮 Game Complete! Final Board:")

if __name__ == "__main__":
    animate_game()
```
</details>

## 🎯 How to "Play" This Animation:

1. **Click each ▶️ button** to advance the game
2. **Watch the board update** with X and O moves
3. **Follow the strategy** as the game unfolds
4. **See the final result** - X wins in this example!

## 📊 Game Statistics from This Match:

| Move | Player | Position | Result |
|------|--------|----------|--------|
| 1 | X | Center | Good opening |
| 2 | O | Top-left | Standard response |
| 3 | X | Top-right | Strategic block |
| 4 | O | Bottom-left | Creates threat |
| 5 | X | Middle-right | Sets up win |
| 6 | X | Bottom-right | **Winning move!** |

## 🎪 Bonus: Mini Game Visualized

```
Initial  →  Move 1  →  Move 2  →  Move 3  →  WIN!
[   ]    [   ]    [ O ]    [ O ]    [ O ]
[   ] →  [ X ] →  [ X ] →  [ X ] →  [ X ] → 🏆
[   ]    [   ]    [   ]    [ X ]    [ X ]
```

---

**💡 Tip:** To see this as a "real" animation, copy this README and view it in a Markdown previewer that supports auto-refresh!

---

*✨ This README creates an interactive Tic-Tac-Toe animation using only GitHub Markdown features!*
