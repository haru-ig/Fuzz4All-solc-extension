pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    uint256[] public elements;
    uint256 constant numElements = 6;
    constructor() public {
        elements = [120, 100, 90, 100, 100, 100];
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
        elements[5] = 300;
    }
    function use() public {
        elements = [170, 90, 170, 80, 60, 150];
    }
}
