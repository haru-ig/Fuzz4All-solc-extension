pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;
    uint256[] public bArray2;
    uint256[] public bArray3;
    uint256[] public bArray4;
    uint256[] public bArray5;
    uint256[] public bArray6;
    uint256[] public bArray7;
    uint256[] public bArray8;
    uint256[] public bArray9;
    uint256[] public bArray10;
    uint256[] public bArray11;
    uint256[] public bArray12;
    uint256[] public bArray13;
    uint256[] public bArray14;
    uint256[] public bArray15;
    uint256[] public bArray16;

    function f() payable public {
        bArray[16] = 0x9999999999999999999999999999999999999999999999999999999999999999;
        bArray2 = bArray;
        uint256[] memory array1;
        array1 = bArray2;
        uint256[] memory array2;
        array2 = bArray;
        for (uint256 i = 0; i < 16; i++) {
            bArray3[i] = bArray4[i] = bArray5[i] = bArray6[i] = bArray7[i] = bArray8[i] = bArray9[i] = bArray10[i] = bArray11[i] = bArray12[i] = bArray13[i] = bArray14[i] = b
