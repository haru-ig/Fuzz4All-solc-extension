pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A;
    uint B;
    function increaseA(uint x) public {
        B = x + A;
        A = 0;
    }
    function increaseB(uint x) public {
        A = x + B;
    }
    function subtractB(uint x) public {
        B = B - x;
    }
    function subtractA(uint x) public {
        A = A - x;
    }
    function multiplyB(uint x) public {
        B = x - B;
    }
}
