pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 6;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
        A = A - removeA;
    }
    uint constant add = 6;
    function increase(uint _x) public {
        B = B + add;
    }
    uint removeA = 10;
    function decrease(uint _x) public {
        A = removeA - _x;
    }
}
