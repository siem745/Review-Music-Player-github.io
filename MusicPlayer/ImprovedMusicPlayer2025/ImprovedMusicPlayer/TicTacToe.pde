void setup() {
  size(300, 300);
  resetGame();
}

void draw() {
  background(255);
  square(0,0,300);
  drawBoard();
  drawMarks();
  checkWinner();
}

char[][] board;
char currentPlayer;
boolean gameOver;

void resetGame() {
  board = new char[3][3];
  currentPlayer = 'X';
  gameOver = false;
}
    // i denotes my cell rows.
    // j denotes my cell columns
    
    // Game Board
void drawBoard() {
  stroke(0);
  for (int i = 1; i < 3; i++) { // i can either be 1 0r 2
    line(i * width / 3, 0, i * width / 3, height); // Draws the vertical lines of the board
    line(0, i * height / 3, width, i * height / 3); // Draws the horizontal lines of the board
  }
}

void drawMarks() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 'X') {
        line(j * width / 3 + 20, i * height / 3 + 20, (j + 1) * width / 3 - 20, (i + 1) * height / 3 - 20);
        line(j * width / 3 + 20, (i + 1) * height / 3 - 20, (j + 1) * width / 3 - 20, i * height / 3 + 20);
      } else if (board[i][j] == 'O') {
        noFill();
        ellipse(j * width / 3 + width / 6, i * height / 3 + height / 6, 60, 60);
      }
    }
  }
}

void mousePressed() {
  if (gameOver) {
    resetGame();
    winner = "";
  } else {
    int i = floor(mouseY / (height / 3));
    int j = floor(mouseX / (width / 3));
    if (board[i][j] == 0) {
      board[i][j] = currentPlayer;
      currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
    }
  }
}

void checkWinner() {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] != 0 && board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
      gameOver = true;
      return;
    }
    if (board[0][i] != 0 && board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
      gameOver = true;
      return;
    }
  }
  if (board[0][0] != 0 && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
    gameOver = true;
    return;
  }
  if (board[0][2] != 0 && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
    gameOver = true;
    return;
  }
  boolean draw = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 0) {
        draw = false;
      }
    }
  }
  if (draw) {
    gameOver = true;
  }
}
