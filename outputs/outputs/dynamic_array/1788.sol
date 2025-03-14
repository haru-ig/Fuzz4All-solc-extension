pragma solidity ^0.8.0;
contract OverridingFixedArrayWithoutCopyAndNoInit {
    uint256 public fixedValues[10];
    address public addressValues[10];
    mapping(function (uint256,uint256, uint256) => uint256) public copyFunc;
    uint256 public noInitCopyFunc;
    constructor() {
        fixedValues[0] = 0;
        fixedValues[1] = 0;
        fixedValues[2] = 0;
        fixedValues[3] = 0;
        fixedValues[4] = 0;
        fixedValues[5] = 0;
        fixedValues[6] = 0;
        fixedValues[7] = 0;
        fixedValues[8] = 0;
        fixedValues[9] = 0;
        addressValues[0] = 0x1234;
        addressValues[1] = 0x5678;
        addressValues[2] = 0x9abc;
        addressValues[3] = 0xFedC;
        addressValues[4] = 0x57565F58575F;
        addressValues[5] = 0x969696969696969696969696969696969696969696969696;
        addressValues[6] = 0x1818181818181818181818C823E8557595B5D5E5F60616182F5B178B27A911;
        addressValues
