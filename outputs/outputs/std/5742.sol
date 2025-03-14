pragma solidity ^0.8.0;
contract Array9{
    uint x = 5;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    constructor(){
        x1 = new uint[](4);
        x1[1] = 1;
        x = 6;
        x2 = new uint[](6);
        x2[4] = 6;
        x4 = new uint[](3);
    }
    function getNumber() public returns (uint) {
        return x;
    }
    function arraySet(uint index, uint x) public {
        x5[index] = x;
    }
    function arrayGet(uint index) public view returns (uint) {
        return x5[index];
    }
    function arrayAdd(uint x) public returns (uint) {
        return (x0 + x);
    }
}
