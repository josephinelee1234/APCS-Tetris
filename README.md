# APCS-Tetris
Prototype: https://docs.google.com/document/d/1BRN-SeDw0srAglKlCprYc-ydPAaK-cCEwl2CCe1ZDyI/edit?usp=sharing <br />
Group Name: Tete-a-Tetris <br />
Group Member names: Alexander Dickerson, Josephine Lee <br />
# Brief Project Description:
Differently shaped tetrominoes fall from the top of the grid. A completed row clears the row and the remaining blocks above the completed row shift down, and the score increases. The game ends when the user can not play the current piece because the user tries to play a piece that does not fit in the window.
# Log
**5/25:** Josephine: I constructed all the methods outlined in our current UML design. I also created private int[][] for each of the 7 shapes and completed shiftDownContinuously() in Piece.pde and void draw() in Tetris.pde

**5/25:** Alexander: Created the background and added the background reset to draw(). Added a color variable and an isActive variable to Piece. Created a skeleton for the Piece constructor; it still needs different colors, and the coordinates will either be changed here or adapted by the display.

**5/26** Josephine: We created the constructor for the Background class and its display(). We started the left(), right(), and down() for Piece, but they still need to check for occupied spaces. Access methods getCoords() and getColor() were adde to Piece for the Background methods.

**5/26:** Alexander: We created the constructor for the Background class and its display(). We started the left(), right(), and down() for Piece, but they still need to check for occupied spaces. Access methods getCoords() and getColor() were added to Piece for the Background methods.

**5/27:** Josephine: I completed keyPressed() and added a rotationCount private variable. Then, I wrote writePiece(Piece p) using the x and y coordinates of the piece. I also completed keyReleased() using the methods we wrote yesterday and started removeFullLine(row). Made slight changes to the format.

**5/27:** Alexander: Modified keyPressed() to work with the new system for moving pieces through background. right() is almost done, it just needs to check for coordinates rather than color (fixed the issue where only the right most pixels were rendered). Set up the score to actually display the score rather than a temporary constant and created getScore().

**5/28:** Josephine: Completed left(), right(), and down(). Added timer to automatically drop pieces and go faster. Created a system to make new a piece when the current one can't go down any more. Added different colors to differently shaped pieces.

**5/28:** Alexander: Completed left(), right(), and down(). Added timer to automatically drop pieces and go faster. Created a system to make new a piece when the current one can't go down any more. Added different colors to differently shaped pieces.

**5/31:** Alexander: Completed checkForLine() and dropAboveLines(). Handled ending the game by stopping piece creation/movement and the text "Game Over" but the board and score are still displayed.
