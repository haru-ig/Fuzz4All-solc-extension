pragma solidity ^0.8.0;
contract MutatedDynamicArrays15 {
    uint256[100] public elements;
    uint256 constant numElements = 6;
    uint256 constant numBytes = 6 * 4;

    constructor() public {
        elements = [120, 100, 90, 100, 100, 100];
    }
    function use() public {
        elements = [170, 90, 170, 80, 60, 150];
    }
}
