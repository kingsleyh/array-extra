suite "Array foldl" {
  test "folds left" {
    Array.Extra.foldl(
      (acc : Number, n : Number) : Number => { acc + n },
      0,
      [
        1,
        2,
        3,
        4,
        5
      ]) == 15
  }
}

suite "Array foldr" {
  test "folds right" {
    Array.Extra.foldr(
      (acc : Number, n : Number) : Number => { acc + n },
      0,
      [
        1,
        2,
        3,
        4,
        5
      ]) == 15
  }
}

suite "Array append" {
  test "appends array b to array a" {
    Array.Extra.append([
      1,
      2,
      3
    ], [
      4,
      5,
      6
    ]) == [
      1,
      2,
      3,
      4,
      5,
      6
    ]
  }
}

suite "Array concat" {
  test "concats an array of arrays into a single array " {
    Array.Extra.concat(
      [
        [
          1,
          2
        ],
        [
          3,
          4
        ],
        [
          5,
          6
        ]
      ]) == [
      1,
      2,
      3,
      4,
      5,
      6
    ]
  }
}

suite "Array flatMap" {
  test "maps over a nested array and flattens" {
    try {
      result =
        [
          [
            3,
            1
          ],
          [
            2,
            0
          ],
          [5]
        ]
        |> Array.Extra.flatMap(
          (n : Array(Number)) : Array(Number) => { [Array.max(n)] })

      (result == [
        3,
        2,
        5
      ])
    }
  }
}