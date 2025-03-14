pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A = 10;

    function increaseA(uint x) public {
        A = A + x;
    }
    function increaseB(uint x) public {
        A = A + x;
    }
    function subtractA(uint x) public {
        A = A - x;
    }
    function subtractB(uint x) public {
        B = B - x;
    }
    function multiplyA(uint x) public {
        A = A * x - x;
    }
    function multiplyB(uint x) public {
        B = B * x - x;
    }
}
