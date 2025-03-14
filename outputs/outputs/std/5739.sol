pragma solidity ^0.8.0;
contract Array8{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    constructor(){
        x5 = new uint[](7);
        x2 = new uint[](7);
        x1 = new uint[](8);
        x2[7] = 3;
        x1[6] = 3;
        x3 = new uint[](8);
        x6 = new uint[](5);
        x6[1] = 3;
        x5[6] = 3;
        x4 = new uint[](2);
    }
    function arraySet(uint index, uint x) public {
        x5[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x5[index];
    }
    function arraySet2(uint index, uint x) public {
        x2[index] = x;
    }
    function arrayGet2(uint index) public view returns (uint) {
        return x2[index];
    }
    function arraySet3(uint index, uint x) public {
        x6[index] = x;
    }
    function arrayGet3(uint index) public view returns (uint) {
        return x6[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        return (x0 + x);
    }
}
