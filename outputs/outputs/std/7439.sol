pragma solidity ^0.8.0;
contract ArrayNew {
    function findMin(uint[] memory array) internal view returns (uint) { return array[0]; }
    function findMax(uint[] memory array) internal view returns (uint) { return array[1]; }
    function findSum(uint[] memory array) internal view returns (uint) { return array[1] + array[0]; }
    function sort(uint[] memory array) internal view returns (uint[] memory sortedArray) {
        uint temp;
        for (uint i = 0; i < array.length - 1; i++) {
            for (uint j = i + 1; j < array.length; j++) {
                if (array[i] > array[j]) {
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }
        return array;
    }
    function populateArray() internal pure returns (uint[] memory array) {
        array = new uint[](2); array[0] = 6; array[1] = 4;
        return array;
    }
}
