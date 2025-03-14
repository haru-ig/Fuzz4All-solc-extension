pragma solidity ^0.8.0;
contract ArrayNewMutated is ArrayNew {
    function findMax(uint[] memory array) internal view returns (uint) {
        uint max = array[0];
        for (uint i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }
        return max;
    }
}
