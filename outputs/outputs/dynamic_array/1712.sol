pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    uint256[] public elements1;
    uint256 constant numElements1 = 6;
    constructor() public {
        elements1 = new uint256[](numElements1);
        elements1[2] = 155;
        elements1[1] = 150;
        elements1[0] = 150;
        elements1[3] = 205;
        elements1[4] = 300;
        elements1[5] = 310;
    }
    function use() public {
        elements1 = new uint256[](7);
        elements1[3] = 135;
        elements1[1] = 150;
        elements1[0] = 150;
        elements1[2] = 205;
        elements1[4] = 300;
        elements1[5] = 310;
    }
}
