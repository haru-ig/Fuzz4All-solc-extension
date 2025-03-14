pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 6;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
    }
    function subtract(uint _x) public {
        A = _x - A;
    }
    function multiply(uint _x) public {
        A = B - _x - A;
    }
    uint constant add = 6;
    function increase(uint _x) public {
        B = B + add;
    }
    uint constant subtract2 = 6;
    function decrease(uint _x) public {
        A = _x - subtract2;
    }
}
