pragma solidity ^0.8.0;
library Array {
    uint256[100] private storage array;
    function set(uint location, uint data) public {
        array[location] = data;
    }
    function get(uint location) public pure returns (uint) {
        return array[location];
    }
}
