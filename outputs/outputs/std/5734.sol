pragma solidity ^0.8.0;
contract Array7{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    constructor(){
        x1 = new uint[](4);
        x2 = new uint[](7);
        x1[3] = 3;
        x2[4] = 3;
        x3[5] = 3;
        x1[2] = 3;
        x2[5] = 3;
        x3[7] = 3;
    }
    function arraySet(uint index, uint x) public {
        x1[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x1[index];
    }
    function arraySet2(uint index, uint x) public {
        x2[index] = x;
    }
    function arrayGet2(uint index) public view returns (uint) {
        return x2[index];
    }
    function arrayGet2ReturnStorage(uint index) public view returns (uint) {
        return x1[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        return (x0 + x);
    }
    function arrayAddWithReturn(uint x) public returns (uint) {
        x0 += x;
        return x0;
    }
}
