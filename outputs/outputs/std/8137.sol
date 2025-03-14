pragma solidity ^0.8.0;
contract ArrayManipulation extends ArrayManipulationModified{
    uint256[4][] memory some_array = [
        [100, 20, 60, 99],
        [10, 20, 70],
        [1000, 6, 979, 6],
        [10, 1, 0]
    ];
    function sortArray(uint256[] memory some_array) public view returns (uint256[] memory) {
        uint256 i, j;
        uint256 k;
        uint256 temp;
        uint256 temporary_max;
        for (i = 0; i < some_array.length; i++) {
            j = i;
            do {
                k = j + 1;
                if (some_array[j] < some_array[k]) {
                    temp = some_array[j];
                    some_array[j] = some_array[k];
                    some_array[k] = temp;
                }
                j++;
            } while (j < some_array.length);
        }
        return some_array;
    }
}
