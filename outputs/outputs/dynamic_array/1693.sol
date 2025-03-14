pragma solidity ^0.8.0;
contract MutatedDynamicArrays11 {
    uint256[] elements;
    constructor(uint256 _a, uint256 _b) public {
        elements = new uint256[](5);
        elements[2] = _a;
        elements[1] = _b;
        elements[0] = _b;
        elements[3] = _a;
    }
    function use() public {
        elements[2] = 30000;
    }
}
