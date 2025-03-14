pragma solidity ^0.8.0;
contract ArrayManipulationModified {
    function getMaximum(uint[] memory some_array) public view returns (uint256) {
        uint256 maximum = some_array[0];
        uint256 index_of_maximum = 0;
        for (uint i = 1; i < some_array.length; i++) {
            if (some_array[i] > maximum) {
                maximum = some_array[i];
                index_of_maximum = i;
            }
        }
        return maximum;
    }
}
