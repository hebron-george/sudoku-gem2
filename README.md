# SudokuBuilder
```ruby
$ gem install sudoku_builder
$ irb

> puzzle = SudokuBuilder.create
> puzzle.pretty_print
 +-----------------------------+
 | 7  9  2 | 5  1  4 | 8  6  3 |
 | 3  4  1 | 7  8  6 | 2  5  9 |
 | 5  6  8 | 3  9  2 | 7  1  4 |
 +-----------------------------+
 | 4  5  7 | 6  3  8 | 9  2  1 |
 | 6  1  9 | 2  5  7 | 4  3  8 |
 | 2  8  3 | 1  4  9 | 6  7  5 |
 +-----------------------------+
 | 9  7  5 | 4  2  1 | 3  8  6 |
 | 8  3  6 | 9  7  5 | 1  4  2 |
 | 1  2  4 | 8  6  3 | 5  9  7 |
 +-----------------------------+

> puzzle.hard.pretty_print
 +-----------------------------+
 | _  2  6 | _  _  _ | _  8  _ |
 | _  _  _ | _  2  _ | 1  3  7 |
 | _  _  _ | 9  _  _ | 4  _  _ |
 +-----------------------------+
 | 1  5  _ | _  _  7 | _  _  _ |
 | 9  4  2 | _  _  _ | _  _  _ |
 | 6  _  _ | 1  4  _ | _  _  2 |
 +-----------------------------+
 | _  _  _ | 4  7  2 | 6  1  9 |
 | _  6  4 | _  _  _ | _  5  3 |
 | 2  _  _ | _  _  6 | 7  _  8 |
 +-----------------------------+

> puzzle = SudokuBuilder.create
> puzzle.easy.pretty_print
 +-----------------------------+
 | 8  6  _ | 9  2  5 | _  _  4 |
 | _  1  _ | _  _  _ | 5  2  7 |
 | 2  4  5 | 7  _  3 | 9  8  _ |
 +-----------------------------+
 | 6  _  4 | _  _  1 | 7  5  9 |
 | _  _  1 | 3  7  _ | _  6  8 |
 | _  7  8 | 5  6  _ | 2  1  3 |
 +-----------------------------+
 | _  8  3 | 4  _  2 | 6  9  1 |
 | _  _  _ | _  3  7 | 8  _  _ |
 | 4  5  6 | 1  _  _ | 3  7  2 |
 +-----------------------------+

> to_solve = SudokuBuilder.create.hard.to_a
> solved   = SudokuBuilder.solve(to_solve).pretty_print
 +-----------------------------+
 | 3  2  1 | 9  8  4 | 6  5  7 |
 | 7  8  4 | 6  3  5 | 1  2  9 |
 | 9  5  6 | 7  1  2 | 8  4  3 |
 +-----------------------------+
 | 8  1  7 | 4  6  9 | 5  3  2 |
 | 6  3  2 | 1  5  7 | 9  8  4 |
 | 4  9  5 | 8  2  3 | 7  6  1 |
 +-----------------------------+
 | 5  7  9 | 2  4  8 | 3  1  6 |
 | 2  6  3 | 5  7  1 | 4  9  8 |
 | 1  4  8 | 3  9  6 | 2  7  5 |
 +-----------------------------+

> puzzle = SudokuBuilder.create
> print puzzle.to_rows
# an array with each row of the sudoku
[
  [1, 4, 9, 2, 8, 6, 7, 5, 3],
  [6, 3, 7, 1, 9, 5, 4, 8, 2],
  [2, 5, 8, 3, 7, 4, 1, 9, 6],
  [4, 8, 6, 5, 3, 9, 2, 7, 1],
  [9, 7, 1, 6, 4, 2, 8, 3, 5],
  [3, 2, 5, 8, 1, 7, 9, 6, 4],
  [5, 1, 3, 9, 2, 8, 6, 4, 7],
  [7, 9, 2, 4, 6, 3, 5, 1, 8],
  [8, 6, 4, 7, 5, 1, 3, 2, 9]
]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sudoku_builder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
