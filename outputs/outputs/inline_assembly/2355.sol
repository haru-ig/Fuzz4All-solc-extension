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
        if (A == x) revert();
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
    function mutator() public
    {
        mutatorIncreaseA(10);
        mutatorIncreaseB(10);
        mutatorSubtractA(10);
        mutatorSubtractB(10);
        mutatorMultiplyB(10);
        mutatorDoubleSubtract(10);
        mutatorDoubleAdd(10);
    }
    function mutatorIncreaseA (uint x) public {
        increaseA(x);
    }
    function mutatorIncreaseB (uint x) public {
        increaseB(x);
    }
    function mutatorSubtractA (uint x) public {
        subtractA(x);
    }
    function mutatorSubtractB(uint x) public {
        subtractB(x);
    }
    function mutatorMultiplyB (uint x) public {
        multiplyB(x);
    }
    function mutatorDoubleSubtract (uint x) public {
        doubleSubtract(x);
    }
    function mutatorDoubleAdd (uint x) public {
        doubleAdd(x);
    }
}
