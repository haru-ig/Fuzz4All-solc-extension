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
        x1 = new uint[](6);
        x2 = new uint[](9);
        x3 = new uint[](11);
        x4 = new uint[](13);
        x5 = new uint[](15);
        x6 = new uint[](17);
        x0 = 5;
        x7 = new uint[](19);
    }
    function arraySet(uint index, uint x) public {
        x1[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x1[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        return x0 + x;
    }
    function arrayAddWithReturn(uint x) public returns (uint) {
        x0 += x;
        return x0;
    }
}
