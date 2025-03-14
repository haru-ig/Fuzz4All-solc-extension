pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B = 9;
    function increaseA(uint x) public {
        B++;
    }
    function increaseB(uint x) public {
        A = A + x;
    }
    function multiplyB(uint x) public {
        if (A == 0) revert();
        B = x * B;
    }
    function doubleSubtract(uint x) public {
        A = A + B;
        B = x * (A + B);
    }
    function doubleAdd(uint x) public {
        A++;
        B = B + (A * x);
    }
}

pragma solidity ^0.8.0;
contract Mutator
{
    uint A;

    uint B = 9;
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
    function doubleSubtract(uint x) public {
        A = (A * 2) - B;
        B = x * (A + B);
    }
    function doubleAdd(uint x) public {
        A++;
        B = B + (A * x);
    }
}
