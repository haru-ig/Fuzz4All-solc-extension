pragma solidity ^0.8.0;
contract Mutator {
    struct StructWithNestedArrays {
        uint8[7] bubblyArray;
        uint8[15] tremorArray;
    }
    struct MutatedStruct {
        uint256[3] array0;
        uint256[2][2][10] mutatedArrays;
    }
    function setArrays(uint256 size) external {
        StructWithNestedArrays memory array = StructWithNestedArrays({

            555,
            888,
            0xff,
            0xff,
            0xff,
