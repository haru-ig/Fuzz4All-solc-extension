pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public immutable array;
    uint256 public constant my_value = 123;
    constructor() {
        array = my_value;
    }
    function incArray() public view returns (uint256) {
        return array + 1;
    }
}
