pragma solidity ^0.8.0;
contract MutatorOld
{
    function reduce(uint x) public {
    }
    function increase(uint x) public {
    }
    function decrease(uint x) public {
    }
    function moveB(uint x) public {
    }
    function moveA(uint x) public {
    }
    function moveBCarry(uint x) public {
    }
    function moveCarry(uint x) public {
    }
}


pragma solidity ^0.8.0;

contract Mutator
{
    uint _b;
    constructor() {
        _b = 0xf566beede137b46f56e469fd078fe00a6847f437;
    }

    function increase(uint x) public {
        _b = _b + x;
    }

    function reduce(uint x) public {
        _b -= x;
    }

    function subtract(uint x) public {
        _b = _b - x;
    }

    function multiply(uint x) public {
        _b = _b*x;
    }

    function moveA(uint x) public {
        uint temp = _b;
        _b = x << 8;
        uint temp2 = x << 8;
        _b -= 8;
    }

    function moveB(uint x) public {
        uint temp1 = _b<< 8;
        uint temp2 = (_b-x)<< 8;
        _b =  (_b-x)<< 8;
    }

    function moveBCarry(uint x) public {
        uint temp2 = _b;
        _b += (B >> 8);
        _b -= 1;
    }

    function moveCarry(uint x) public {
        uint temp1 = _b;
        _b -= (A >> 8);
        _b += 1;
    }

    function Bread() public {
        uint x = _b - (uint)(A > B);
        uint temp1 = _b;
        _b = x;
    }
}
