pragma solidity ^0.8.0;
contract MutatedDynamicArrays16 {
    uint256[] public elements;
    uint256 constant numElements = 14;
    constructor() public {
        elements = [80, 160, 50, 200, 400, 300, 300, 30, 400, 90, 150, 100, 100, 90, 100, 400, 120, 400, 100, 160];
    }
    uint256[400] private storageElements;
    function use() public {
        elements = storageElements;
    }
    function use2() public {
        storageElements = elements;
    }
}
