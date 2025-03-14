pragma solidity ^0.8.0;
contract MutatorOld
{
    uint A = 10;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
    }
    function subtract(uint _x) public {
        B = A + subtract2;
        A = A - subtract2;
    }
    function multiply(uint _x) public {
        subtract((A >> 8) * _x);
    }
    uint constant add = 64;
    function increase(uint _x) public {
        subtract((A + add >> 8) * _x);
        subtract((A + add >> 8) * _x);
        subtract((A + add >> 8) * _x);
        subtract((A + add >> 8) * _x);
        subtract((A + add >> 8) * _x);
    }
    uint constant subtract2 = 64;
    function decrease(uint _x) public {
        subtract((A >> 8) * subtract2);
    }
}
