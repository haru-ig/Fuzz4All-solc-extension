pragma solidity ^0.8.0;
contract Array9{
    uint public x0;
    uint internal x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    uint[] public x8;
    uint[] public x9;
    constructor(){
        x5 = new uint[](10);
        x2 = new uint[](10);
        x1 = 6;
        x2[0] = 3;
        x1[5] = 3;
        x3 = new uint[](10);
        x6 = new uint[](7);
        x5[9] = 3;
        x8 = new uint[](10);
        x9 = new uint[](5);
        x8[4] = 3;
        x7 = new uint[](2);
    }
    function arraySet(uint index, uint x) public {
        x5[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x5[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        return (x0 + x + x1 + x2[6]);
    }
}
