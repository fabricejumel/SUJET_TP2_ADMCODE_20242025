class TicTacToe:
    def __init__(self, display=True):
        self.board = [[' ' for _ in range(3)] for _ in range(3)]
        self.players = ['X', 'O']
        self.current_player = 0
        self.display = display

    def print_board(self):
        if not self.display:
            return
        print("   0   1   2 ")
        print("  -----------")
        for i, row in enumerate(self.board):
            print(f"{i} | {' | '.join(row)} |")
            print("  -----------")

    def check_winner(self, player):
        # Check rows
        for row in self.board:
            if all([cell == player for cell in row]):
                return True
        # Check columns
        for col in range(3):
            if all([self.board[row][col] == player for row in range(3)]):
                return True
        # Check diagonals
        if all([self.board[i][i] == player for i in range(3)]) or all([self.board[i][2 - i] == player for i in range(3)]):
            return True
        return False

    def check_draw(self):
        return all([cell in ['X', 'O'] for row in self.board for cell in row])

    def make_move(self, row, col):
        if self.board[row][col] == ' ':
            self.board[row][col] = self.players[self.current_player]
            if self.check_winner(self.players[self.current_player]):
                self.print_board()
                return f"Player {self.players[self.current_player]} wins!"
            if self.check_draw():
                self.print_board()
                return "The game is a draw!"
            self.current_player = (self.current_player + 1) % 2
        else:
            return "The cell is already taken! Try again."
        self.print_board()
        return None

    def play_game(self, moves):
        self.print_board()
        for move in moves:
            result = self.make_move(*move)
            if result:
                return result
        return "Game over without a winner!"

    def play_game_next(self, player, row, col):
        if player != self.players[self.current_player]:
            return -1
        if self.board[row][col] != ' ':
            return 0
        self.board[row][col] = player
        if self.check_winner(player):
            self.print_board()
            return 1
        if self.check_draw():
            self.print_board()
            return 1
        self.current_player = (self.current_player + 1) % 2
        self.print_board()
        return 1

# Example usage:
if __name__ == "__main__":
    game = TicTacToe(display=False)
    moves = [(0, 0), (0, 1), (1, 1), (1, 0), (2, 2), (2, 0)]
    result = game.play_game(moves)
    if result:
        print(result)

    # Example usage of play_game_next
    game = TicTacToe(display=False )
    print(game.play_game_next('X', 0, 0))  # Should return 1
    print(game.play_game_next('O', 0, 0))  # Should return 0 (cell already taken)
    print(game.play_game_next('X', 1, 1))  # Should return -1 (not X's turn)
    print(game.play_game_next('O', 0, 1))  # Should return 1
