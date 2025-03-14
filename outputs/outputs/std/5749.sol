pragma solidity ^0.8.0;
contract Array9{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    uint[] public x8;
    uint[] public x9;
    constructor(){
        x4 = new uint[](8);
        x1 = new uint[](9);
        x3 = new uint[](8);
        x5 = new uint[](7);
        x2 = new uint[](9);
        x8 = new uint[](2);
        x2[8] = 3;
        x1[7] = 3;
        x6 = new uint[](9);
        x0 = 0;
        x5[0] = 3;
        x8 = new uint[](2);
        x9 = new uint[](5);
        x8[1] = 3;
        x3[0] = 3;
        x7 = new uint[](5);
        x4 = new uint[](2);
        x7[0] = 3;
    }
    function arraySet(uint index, uint x) public {
        x4[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x4[index];
    }
    function arraySet2(uint index, uint x) public {
        x5[index] = x;
    }
    function arrayGet2(uint index) public view returns (uint) {
        return x5[index];
    }
    function arraySet3(uint index, uint x) public {
        x6[index] = x;
    }
    function arrayGet3(uint index) public view returns (uint) {
