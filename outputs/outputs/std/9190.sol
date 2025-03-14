pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 internal readonly array;
    uint256 internal constant my_value = 456;
    constructor() {
        array = my_value;
    }
    function incArray(uint256 x) public view returns (uint256) {
        return array + x;
    }
}
