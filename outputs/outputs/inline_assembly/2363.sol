pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B = B + x;
    }
    function increaseB(uint x) public {
        B = B + x;
    }
    function subtractA(uint x) public {
        A = A - x;
    }
    function subtractB(uint x) public {
        if (x == 0) revert();
        A = A - x * x;
    }
    function multiplyB(uint x) public {
        B = B * x - x;
    }
}
