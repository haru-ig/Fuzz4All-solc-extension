pragma solidity ^0.8.0;
contract OverridingDynamicArray {
    uint256[] private dynArray;
    uint256[] private dynArray2;
    uint256[] private dynArray3;
    uint256[] private dynArray4;
    constructor() public {
        dynArray = new uint256[](4);
        dynArray2 = new uint256[](4);
        dynArray3 = new uint256[](4);
        dynArray4 = new uint256[](4);
    }
    function add1(uint256 value) public {
        dynArray[0] += 1;
        dynArray2[0] += value;
        dynArray3[0] = value;
        dynArray4[0] = 1;
    }
    function add2(uint256 value) public {
        dynArray[1] += value;
        dynArray2[1] += 1;
        dynArray3[1] = value;
        dynArray4[1] = value;
    }
    function add3(uint256 value) public {
        dynArray[2] += value;
        dynArray2[2] += value;
        dynArray3[2] += 1;
        dynArray4[2] = value;
