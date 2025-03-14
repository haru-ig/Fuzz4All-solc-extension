pragma solidity ^0.8.0;
contract MutatorOld
{
    uint A = 10;
    uint B;
    function increase(uint x) public {
        uint Atemp = A + x;
        B = Atemp >> 8;
        A = Atemp;
    }
    function decrease(uint x) public
    {
        uint Atemp = A - x;
        B = Atemp >> 8;
        A = Atemp;
    }
    function subtract(uint x) public
    {
        uint Atemp = A - x;
        B = Atemp >> 8;
        A = Atemp;
    }
    function multiply(uint x) public
    {
        uint Atemp = A - x;
        B = Atemp >> 8;
        A = Atemp;
    }
    function moveB(uint x) public
    {
        uint Atemp = A + x;
        B = Atemp & 0xff;
        A = Atemp >> 8;
    }
    function moveA(uint x) public
    {
        uint Atemp = A + x;
        A = Atemp & 0xff;
        B = Atemp >> 8;
    }
    function moveBCarry(uint x) public
    {
        uint Atemp = A >> 8;
        A = Atemp & 0xff;
        B = Atemp | B;
    }
    function moveCarry(uint x) public
    {
        uint Atemp = A >> 8;
        B = Atemp & 0xff;
        A = Atemp;
    }
}
