pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public readonly array;
    uint256 public constant my_value = 123;
    constructor() {
        array = my_value;
    }
    function setArray(uint256 newValue) public {
        array = newValue;
    }
    function incArray() public view returns (uint256) {
        return array + 1;
    }
}
