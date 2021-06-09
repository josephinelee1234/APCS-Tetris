# APCS-Tetris
Prototype: https://docs.google.com/document/d/1BRN-SeDw0srAglKlCprYc-ydPAaK-cCEwl2CCe1ZDyI/edit?usp=sharing <br />
Group Name: Tete-a-Tetris <br />
Group Member names: Alexander Dickerson, Josephine Lee <br />
# Run/Compile Instructions
Install the Sound library from the Processing Foundation. Run from Processing.
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

**6/1:** Josephine: Found bug in dropAboveLines(). Added mousePressed() and restart() for restarting the game after it is lost. Added and displayed the high score.

**6/2:** Alexander: Fixed a bug where the red piece didn't end the game due to how it was positioned. Started rotation by creating arrays for line and the red s and a temporary tester.

**6/2:** Josephine: Fixed a bug where the red piece didn't end the game due to how it was positioned. Started rotation by creating arrays for line and the red s and a temporary tester.

**6/6:** Josephine: Added rotation arrays for the rest of the shapes. Fixed error in keyPressed() for rotation. Added sound effect for when the game is over.

**6/6:** Alexander: Worked on the rotate method in Background to use a method (that will be implemented in class tomorrow) that returns the coordinates if the theoretical rotation. Then it will actually rotate the piece if it is a legal move. Temporarily commented sound code because it didn't compile. Found a bug in which the top of a piece that caused a full row but wasn't part of it isn't moved down all the way.

**6/7:** Alexander: Added increaseScore(int num) to Background so the score could go up by one whenever the player uses the down key to advance the piece. Removed some unnecessary methods and updated UML to reflect it.

**6/7:** Josephine: Worked on rotatePiece in Piece.pde. Rotation now works for the square, line, and the red S shape.

**6/8:** Josephine: Finished rotatePiece in Piece.pde using rotationCount mod 4 and the rotation arrays. Rotation works for all pieces, but there are still bugs in rotatePiece() in Background.pde when the piece is at the left or right edge of the screen.

**6/8:** Alexander: Finished rotatePiece() in Background.pde and added a helper method rotateFuture() in Piece.pde.
