pragma solidity ^0.8.0;
contract MutatorOld
{
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B = B + x;
    }
    function increaseB(uint x) public {
        B = B + x;
    }
    function subtractB(uint x) public {
        B = B - x;
    }
    function subtractA(uint x) public {
        A = A - x;
    }
    function multiplyB(uint x) public {
        B = B * x - x;
    }
}
