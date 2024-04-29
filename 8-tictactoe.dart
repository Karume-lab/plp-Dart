import 'dart:io';

class TicTacToe {
  late List<List<String>> board;
  late String currentPlayer;

  TicTacToe() {
    board = List<List<String>>.generate(3, (_) => List<String>.filled(3, ' '));
    currentPlayer = 'X';
  }

  void printBoard() {
    for (int i = 0; i < 3; i++) {
      print(' ${board[i][0]} | ${board[i][1]} | ${board[i][2]} ');
      if (i < 2) print('---+---+---');
    }
  }

  void makeMove(int row, int col) {
    if (board[row][col] == ' ') {
      board[row][col] = currentPlayer;
      currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
    } else {
      print('Invalid move. Please try again.');
    }
  }

  bool checkWin() {
    for (int i = 0; i < 3; i++) {
      if (board[i][0] != ' ' &&
          board[i][0] == board[i][1] &&
          board[i][1] == board[i][2]) {
        return true;
      }

      if (board[0][i] != ' ' &&
          board[0][i] == board[1][i] &&
          board[1][i] == board[2][i]) {
        return true;
      }
    }

    if (board[0][0] != ' ' &&
        board[0][0] == board[1][1] &&
        board[1][1] == board[2][2]) {
      return true;
    }

    if (board[0][2] != ' ' &&
        board[0][2] == board[1][1] &&
        board[1][1] == board[2][0]) {
      return true;
    }

    return false;
  }

  bool isBoardFull() {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == ' ') {
          return false;
        }
      }
    }
    return true;
  }
}

void main() {
  TicTacToe game = TicTacToe();
  bool gameWon = false;

  print('Welcome to Tic Tac Toe!');
  print('Player 1: X');
  print('Player 2: O');
  print('Let\'s start the game!\n');

  while (!gameWon && !game.isBoardFull()) {
    game.printBoard();

    print('\nCurrent player: ${game.currentPlayer}');
    print('Enter the row (0-2):');
    int row = int.parse(stdin.readLineSync()!);
    print('Enter the column (0-2):');
    int col = int.parse(stdin.readLineSync()!);

    game.makeMove(row, col);

    if (game.checkWin()) {
      gameWon = true;
      print('\nCongratulations! ${game.currentPlayer} wins!');
    }
  }

  if (!gameWon) {
    print('\nThe game ends in a draw!');
  }
}
