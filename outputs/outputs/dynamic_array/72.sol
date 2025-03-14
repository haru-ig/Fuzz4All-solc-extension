pragma solidity ^0.8.0;
contract A {
    uint256[5] public bArray;
    uint256[5] public bArray2;
    uint256 public uint256A;
    uint256 public uint256A2;
    uint256[5] public bArray3;
    uint8[5] public bArray8;
    function A() public {

        for (uint256 i = 0; i < 5; i++) {
            bArray.push(uint256(i));
        }

        for (uint256 i = 0; i < 5; i++) {
            bArray2.push(uint256(i));
        }

        uint256A = uint256(0);
        for (uint256 i = 0; i < 5; i++) {
            bArray3.push(uint256(i)); {

            uint256A = uint256(i);
            uint256A2 = uint256(i); }
        }
        if (uint256(0) > 0 ) {

            uint256B = uint2
