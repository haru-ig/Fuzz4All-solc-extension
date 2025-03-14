pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A = 10;
    uint B;
    bool hasSetB = false;
    uint private B0;
    constructor(uint _x) public {
        B = _x >> 8;
        B0 = B;
    }
    function subtract(uint _x) public {
        if(!hasSetB) {
            B = B - _x;
            return;
        }
        B = B - _x;
    }
    function multiply(uint _x) public {
        if(!hasSetB) {
            B = B - _x;
            return;
        }
        B = B - _x;
    }
    uint constant add = 64;
    function increase(uint _x) public {
        B = B + add;
        hasSetB = true;
    }
    uint constant subtract2 = 64;
    function decrease(uint _x) public {
        B = B - subtract2;
        if(!hasSetB) {
            B0 = B;
            return;
        }
    }
}
