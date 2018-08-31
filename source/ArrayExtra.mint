module Array.Extra {
  /*
  Map over a nested array and then flatten:
    [[1,2],[1,5]]
    Array.Extra.flatMap((a : Array(Number) : Array(Number) => { [Array.max(n)] }) == [2,5]
  */
  fun flatMap (func : Function(a, Array(b)), array : Array(a)) : Array(b) {
    Array.map(func, array)
    |> Array.Extra.concat()
  }

  /*
  Put two lists together:

    Array.Extra.append([1,1,2] [3,5,8]) == [1,1,2,3,5,8]
  */
  fun append (array1 : Array(a), array2 : Array(a)) : Array(a) {
    `concat(array1, array2)`
  }

  /*
  Concatenate a bunch of arrays into a single array:

    Array.Extra.concat([[1,2],[3],[4,5]]) == [1,2,3,4,5]
  */
  fun concat (arrays : Array(Array(a))) : Array(a) {
    Array.Extra.foldr(Array.Extra.append, [], arrays)
  }

  /*
  Reduce a list from the left.

    Array.Extra.foldl((acc : Number, n : Number) : Number => { acc + n}, 0, [1,2,3,4,5]) == 15
  */
  fun foldl (func : Function(a, b, b), initial : b, array : Array(a)) : b {
    `array.reduce(func, initial)`
  }

  /*
  Reduce a list from the right.

    Array.Extra.foldr((acc : Number, n : Number) : Number => { acc + n}, 0, [1,2,3,4,5]) == 15
  */
  fun foldr (func : Function(a, b, b), initial : b, array : Array(a)) : b {
    `array.reduceRight(func, initial)`
  }
}
