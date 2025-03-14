pragma solidity ^0.8.0;
contract MutatedDynamicArrays16 {
    uint256[14] public elements;
    uint256 constant numElements = 14;
    constructor() public {
        elements = [400, 200, 400, 100, 120, 500, 400, 700, 150, 400, 400, 100, 100, 600, 100, 120, 700, 100, 60];
    }
    function use() public {
        elements = [150, 400, 600, 140, 300, 80, 90, 50, 300, 200, 60, 30, 70, 80, 90, 25, 150];
    }
}
