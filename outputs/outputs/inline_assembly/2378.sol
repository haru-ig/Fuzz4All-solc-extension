pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A = 10;
    uint B;
    function increase(uint x) public {
        B = B + x;
    }
    function decrease(uint x) public {
        B = B - x;
    }
    function subtract(uint x) public {
        B = B - x;
    }
    function multiply(uint x) public {
        B = B - x;
    }
    function moveB(uint x) public {
        B = x;
    }
    function moveA(uint x) public {
        A = x;
    }
    function moveBCarry(uint x) public {
        B = x >> 8;
    }
    function moveCarry(uint x) public {
        A = x >> 8;
    }
}
