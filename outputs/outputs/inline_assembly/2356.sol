pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B++;
    }
    function increaseB(uint x) public {
        A = A + x;
    }
    function subtractA(uint x) public {
        B = x;
    }
    function subtractB(uint x) public {
        A = A - B;
    }
    function multiplyB(uint x) public {
        if (A == 0) revert();
        B = x * B;
    }
    function doubleSubtract(uint x) public {
        B = x * (A - B);
        A--;
    }
    function doubleAdd(uint x) public {
        B++;
        A = A + (B * x);
    }
}
