pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B;
    uint C = 20;
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
    function multiplyA(uint x) public {
        A--;
        B ++ = x;
    }
    function multiplyB(uint x) public {
        if (A == 0) revert();
        B = x * B;
    }
    function divideB(uint x) public {
        if (B == 0) revert();
        B = B/x;
    }
    function divA(uint x) public {
        A--;
        if (A == 0) revert();
        A = A/B;
    }
    function doubleAdd(uint x) public {
        if (B == 0) revert();
        B = x + B;
    }
    function setC(uint x) public {
        C = x;
    }
    function divideC(uint x) public {
        if (C == 0) revert();
        B = C/B;
        C = 0;
    }
    function divide(uint x) public {
        if (A == 0) revert();
        if (x > A) revert();
        B = A/x;
        A = B*x;
    }
    function swapA(uint x) public {
        uint y = B;
        B = A;
        A = y;
    }
    function setEmptyA(uint x) public {
        A = 0;
    }
}

/* Please run the program with the following arguments:
$ truffle test --network local --settings evm:byzantium -v./08372019_mutatingAssembly_sol-08372019.run.js
$ truffle test --network local --settings evm:byzantium -v./08372019_mutatingAssembly_sol-0
