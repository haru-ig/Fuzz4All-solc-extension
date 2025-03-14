pragma solidity ^0.8.0;
contract ArrayManipulationOld {
    function getMaximum(uint[] memory some_array) public view returns (uint256) {
        uint256 maximum = some_array[0];
        uint256 minimum = some_array[0];
        for (uint i = 1; i < some_array.length; i++) {
            uint my_value = some_array[i];
            if (my_value > maximum) {
                maximum = my_value;
            }
            if (my_value < minimum) {
                minimum = my_value;
            }
        }
        return maximum;
    }
}
