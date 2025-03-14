pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A;
    uint B;
    event MutatorChange(uint);

    constructor() public
    {
        uint _B = 10;
        A = 10;
        MutatorChange(B);
    }

    function increaseA(uint x) public {
        B = B + x;
        MutatorChange(A);
    }
    function increaseB(uint x) public {
        B = B + x;
        MutatorChange(B);
    }
    function subtractA(uint x) public {
        A = A - x;
        MutatorChange(A);
    }
    function subtractB(uint x) public {
        B = B - x;
        MutatorChange(B);
    }
    function multiplyA(uint x) public {
        A = A * x - x;
        MutatorChange(A);
    }
    function multiplyB(uint x) public {
        B = B * x - x;
        MutatorChange(B);
    }
}
