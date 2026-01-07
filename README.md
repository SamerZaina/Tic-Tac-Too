# create_animation.py
import time

frames = [
    """
       |   |   
    ---+---+---
       |   |   
    ---+---+---
       |   |   
    """,
    """
       |   |   
    ---+---+---
       | X |   
    ---+---+---
       |   |   
    """,
    # Add more frames...
]

for frame in frames:
    print(frame)
    time.sleep(1)
    print("\033c", end="")  # Clear console
