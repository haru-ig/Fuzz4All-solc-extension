pragma solidity ^0.8.0;
contract MutatorOld
{
    uint A = 10;
    uint B;
    function moveBCarry(uint x) public {
        B = x >> 8;
    }
    function moveCarry(uint x) public {
        A = x >> 8;
    }
    function subtract(uint x) public {
        B = B - x;
    }
    function multiply(uint x) public {
        B = B - x;
    }
    function increase(uint x) public {
        B = B + x;
    }
}
