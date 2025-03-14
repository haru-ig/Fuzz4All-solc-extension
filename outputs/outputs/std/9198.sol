pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    uint256 public constant my_value = 127;
    constructor() {
        array = my_value;
    }
    function incArray() public view {
        array = array + 1;
    }
}
