/// Performs the Selection sort algorithm on a array
///
/// - Parameter array: array of elements that conform to the Comparable protocol to be sorted (inout parameter).
public func selectionSort<T: Comparable>(_ array: inout [T]){
  return selectionSort(&array, <)
}

/// Performs the Selection sort algorithm on a array using the provided comparisson method
///
/// - Parameters:
///   - array: array of elements that conform to the Comparable protocol to be sorted (inout parameter).
///   - isLowerThan: returns true if the two provided elements are in the correct order
public func selectionSort<T>(_ array: inout [T], _ isLowerThan: (T, T) -> Bool){
    guard array.count > 1 else { return array }
    
    for x in 0 ..< array.count - 1 {
        
        // Find the lowest value in the rest of the array.
        var lowest = x
        for y in x + 1 ..< array.count {
            if isLowerThan(array[y], array[lowest]) {
                lowest = y
            }
        }
        
        // Swap the lowest value with the current array index.
        if x != lowest {
            array.swapAt(x, lowest)
        }
    }
}
