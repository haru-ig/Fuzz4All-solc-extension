pragma solidity ^0.8.0;
contract Mutate{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    uint a = 0;
    constructor(){
        x5 = new uint[](5);
        x3 = new uint[](5);
        x6 = new uint[](5);
        x2 = new uint[](5);
        x4 = new uint[](5);
        x1 = new uint[](5);
    }
    function arraySet5(uint index, uint x) public {
        x5[index] = x;
    }
    function arrayGet5(uint index) public view returns (uint) {
        return x5[index];
    }
    function arraySet6(uint index, uint x) public {
    a++;
        x6[index] = x;
    }
    function arrayGet6(uint index) public view returns (uint) {
        return x6[index];
    }
    function arraySet7(uint index, uint x) public {
    a++;
        x7[index] = x;
    }
    function arrayGet7(uint index) public view returns (uint) {
        return x7[index];
    }
    function mutatedArrayAdd(uint x) public {
      x3[a] += x;
    }
    function mutatedArrayAdd2(uint x) public returns (uint) {
        return (x3[a] += x);
    }
}
/* Please create a short program which uses contract memory in a complex way.

The contract memory is initialized as part of the contract's constructor.
It holds 7 data items. In addition, three of the 5
