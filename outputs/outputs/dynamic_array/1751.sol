pragma solidity ^0.8.0;
contract UnsortedSortedDynamicArrays {
    uint256[] public elements;
    function insertSort() public {
        sortArray(elements);
    }

    function sortArray(uint256[] memory a) public pure {
        for (uint256 i; i < a.length - 1; i++) {
            uint256 low = i;
            for (uint256 j = i + 1; j < a.length; j++) {
                if (a[j] < a[low]) {
                    low = j;
                }
            }
            uint256 temp = a[i];
            a[i] = a[low];
            a[low] = temp;
        }
    }
}
