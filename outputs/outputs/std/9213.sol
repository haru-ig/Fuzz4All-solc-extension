pragma solidity ^0.8.0;
contract MutatingContract2 {
    uint256 public array;
    uint256 public constant my_value = 321;
    constructor() {
    }
    function incArray() public view returns (uint256) {
        uint256 sum = array + 1;
        return sum;
    }
}
