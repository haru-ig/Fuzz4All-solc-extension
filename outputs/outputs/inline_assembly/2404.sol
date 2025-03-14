pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 6;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
    }
    function subtract(uint _x) public {
        A = _x - A;
    }
    function multiply(uint _x) public {
        A = B - _x - A;
    }
    uint constant add = 6;
    modifier checkIfAdd() {
        B = B + add;
        _;
        B = add + B;
    }
    function increase(uint _x) public onlyCheckIfAdd {
        B = B + add;
    }
    uint constant subtract2 = 6;
    modifier checkIfSubtract2() {
        A = _x - subtract2;
        _;
        A = subtract2 + A;
    }
    function decrease(uint _x) public onlyCheckIfSubtract2 {
        A = _x - subtract2;
    }
}
