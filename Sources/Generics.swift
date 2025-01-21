////////////////////////////////////////////////////////////////
// MARK: - Generic Functions and Constraints Experiment
////////////////////////////////////////////////////////////////
// Experiment: Modify the anyCommonElements(_:_:) function to make a function that returns an array of the elements that any two sequences have in common.
print("\n=== Generic Functions and Constraints ===")

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
where T.Element: Equatable, T.Element == U.Element
{
    var common: [T.Element] = []
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem && !common.contains(lhsItem) {
                common.append(lhsItem)
            }
        }
    }
    return common
}

print(anyCommonElements([1, 2, 3, 2], [3, 2, 2]))
print(anyCommonElements(["a", "b", "c"], ["b", "c", "d"]))
print(anyCommonElements([1, 2, 3], [4, 5, 6]))
