pragma solidity ^0.8.0;
contract Array10{
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
    uint[] public x10;
    constructor(){
        x3 = new uint[](7);
        x5 = new uint[](7);
        x2 = new uint[](8);
        x10 = new uint[](5);
        x6 = new uint[](3);
        x6[1] = 3;
        x5[6] = 3;
        x10 = new uint[](7);
        x9 = new uint[](4);
        x3 = new uint[](8);
        x2 = new uint[](8);
        x4 = new uint[](2);
    }
    function set3(uint index, uint x) public {
        x3[index] = x;
    }
    function get3(uint index) public view returns (uint) {
        return x3[index];
    }
    function set5(uint index, uint x) public {
        x5[index] = x;
    }
    function get5(uint index) public view returns (uint) {
        return x5[index];
    }
    function set6(uint index, uint x) public {
        x6[index] = x;
    }
    function get6(uint index) public view returns (uint) {
        return x6[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        uint y = (x0 + x);
        return y;
    }
}
/* Please create a small program for
