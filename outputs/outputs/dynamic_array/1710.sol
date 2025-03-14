pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256[] public elements;
    uint256 constant numElements = 6;
    constructor() public {
        elements = new uint256[](numElements);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
        elements[5] = 300;
    }
    function use() public {
        elements = new uint256[](7);
        elements[1] = 150;
        elements[6] = 150;
        elements[2] = 150;
        elements[5] = 150;
        elements[0] = 150;
        elements[3] = 150;
        elements[4] = 200;
        elements[7] = 300;
    }
}
