pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    uint256[] public elements;
    constructor() public {
        elements = new uint256[](6);
        elements[3] = 150;
        elements[2] = 150;
        elements[1] = 150;
        elements[0] = 150;
        elements[4] = 200;
    }
    function use() external {
        elements = new uint256[](9);
        elements[8] = 500;
    }
}
