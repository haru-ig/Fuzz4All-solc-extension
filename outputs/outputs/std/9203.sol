pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    uint256 public constant my_value = 321;
    constructor() {
        array = my_value;
    }
    function incArray() public view returns (uint256) {
        array += 1;
        return array;
    }
}
