pragma solidity ^0.8.0;
contract OverridingFixedSizeArray {
    uint[2] public fixedSizeValue1;
    uint[2] public fixedSizeValue2;
    mapping(uint => uint) public fixedValue;
    constructor() {
        fixedValue[0] = 0;
        fixedValue[1] = 0;
    }
    function addFixedOne(uint value) public {
        fixedSizeValue2[1] += value;
        fixedSizeValue2[0] += value;
        if (fixedSizeValue1[1] > fixedSizeValue2[0]) {
            fixedSizeValue1[0]--;
            fixedSizeValue1[1]++;
        }
    }
}
