pragma solidity ^0.8.0;
contract OverridingNonFixedSizeArray {
    mapping(uint256 => uint) public nonFixedValue1;
    mapping(uint256 => uint) public nonFixedValue2;
    constructor() {
        nonFixedValue1[0] = 0;
        nonFixedValue1[1] = 0;
    }
    function nonFixedAddOne(uint value) public returns (uint) {
        nonFixedValue2[1] += value;
        return nonFixedValue2[1];
    }
    function nonFixedAddOneNoCopy(uint value) public returns (uint) {
        nonFixedValue1[0] += value;
        return nonFixedValue1[0];
    }
    function nonFixedSetOne(uint initialValue, uint value) public {
        nonFixedValue2[value] = initialValue;
    }
}
