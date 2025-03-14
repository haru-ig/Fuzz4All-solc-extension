pragma solidity ^0.8.0;
contract MutatorOld {
    uint A = 10;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
    }
    function subtract(uint _x) public {
        A = A - _x;
    }
    function multiply(uint _x) public {
        A = B - _x;
    }
    uint constant add = 64;
    function increase(uint _x) public {
        B = B + add;
    }
    uint constant subtract2 = 64;
    function decrease(uint _x) public {
        A = A - subtract2;
    }
    function printCurrent() public {


    }
}
