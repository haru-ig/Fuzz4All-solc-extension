pragma solidity ^0.8.0;
contract MutatedDynamicArrays12 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](5);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
    }
    function use() public {
        elements = new uint256[](6);
    }
}
