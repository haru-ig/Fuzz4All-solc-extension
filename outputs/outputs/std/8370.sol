pragma solidity ^0.8.0;
contract ArrayMutationsBis4 {
    uint256[] public newArray;
    uint arrayElement;
    uint newArrayElement;
    uint256 result;
    uint256[] emptyArray;
    uint256[20][10] public twoDArray;
    uint256[20] public newTwoDArray;
    uint256[3][4][5] public twoDArray2;
    bytes32 key;
    uint[1] public data1;
    uint[1, 5] public data2;
    uint[5] public data3;
    uint256[55, 60] public data4;
    uint[55, 60] public data5;
    uint[5] public data6;
    uint256[5] public data7;
    uint[55, 6] public data8;
    uint[55, 6, 5] public data9;
    uint[55] public data10;
    uint256[5, 55, 6, 55] public data11;
    uint[55]public data12;
    uint40[5] public data13;
    uint[5, 55, 65, 55] public data14;
    uint256[55, 60]public data15;
    constructor () public {
        for(uint index = 0; index < 20; index++) {
            for(uint row = 0; row <10; row++) {
                twoDArray[index][row] = index + row * 10;
            }
        }
        for
