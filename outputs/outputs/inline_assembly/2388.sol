pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A = 10;
    uint B;
    function moveBCarry(uint x) public {
        B = B >> 8;
        B = B + x >> 8;
    }
    function moveCarry(uint x) public {
        A = A >> 8;
        A = A + x >> 8;
    }
    function subtract(uint x) public {
        B = B - x >> 8;
        B = B - x >> 8;
    }
    function multiply(uint x) public {
        B = B - x >> 8;
        B = B - x >> 8;
    }
    function increase(uint x) public {
        B = B + x >> 8;
        B = B + x >> 8;
    }
}
