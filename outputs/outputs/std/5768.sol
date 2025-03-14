pragma solidity ^0.8.0;
contract Solidity2{
    constructor(){
    }
    function mutated21() public returns (uint) {
        return uint32x4x4x4_4x4(0xffffffff,0x00000000,0xffffffff,0xffffffff,0x00000000, 0xffffffff, 0xffffffff, 0xffffffff);
    }
    function mutated22() public returns (uint) {
        return uint32x4x4x4_4x4(100000000000000000000,-1,2,3,4, 5,6,7);
    }
    function mutated33() public returns (uint) {
        uint[128] memory temp;
        temp[32]=10000000000000000000;
        temp[36]=50000000000000000000;
        temp[40]=10000000000000000;
        temp[44]=5000000000000000;
        temp[48]=100000000000000;
        temp[52]=50000000000000;
        temp[56]=10000000000000;
        temp[60]=5000000000000;
        temp[64]=1000000000000;
        temp[68]=500000000000;
        temp[71]=10000000000;
        temp[75]=5000000000;
        return uint32x4x4x4_4x4(temp[0],temp[1],temp[2],temp[3],temp[4], temp[5],temp[6],temp[7],  temp[8],temp[9],temp[10],temp[11],  temp[12],temp[13],temp[14],temp[15],  temp[16],temp[17],temp[18
