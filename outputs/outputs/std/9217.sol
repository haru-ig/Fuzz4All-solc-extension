pragma solidity ^0.8.0;
contract MutatingContract1 {
    uint[10] array_storage;
    constructor() {
    }
    function setArray(uint256 a) public {
        uint256 sum = setAndReturnSum(my_value, a);
        array_storage[9] = sum;
    }
    function incArray() public view returns (uint256) {
        uint256 sum = setAndReturnSum(array_storage[9], array_storage[8]) + 1;
        array_storage[9] = sum;
    }
    function setAndReturnSum(uint256 arg1, uint256 arg2) public returns (uint256) {
        uint256 sum = arg1 + arg2;
        return sum;
    }
}
