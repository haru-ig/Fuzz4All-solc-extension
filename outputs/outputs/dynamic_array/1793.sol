pragma solidity ^0.8.0;
contract OverridingFixedSizeArray {
    mapping(uint256 => uint) public fixedValue1;
    constructor() {
        fixedValue1[0] = 0;
        fixedValue1[1] = 0;
    }
    function fixedAddOne(uint value) public returns (uint) {
        fixedValue1[1] += value;
        return fixedValue1[1];
    }
    function fixedAddOneNoCopy(uint value) public returns (uint) {
        fixedValue1[0] += value;
        return fixedValue1[0];
    }
}
