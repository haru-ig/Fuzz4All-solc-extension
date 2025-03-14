pragma solidity ^0.8.0;
contract Mutator
{
    uint A;
    uint B;
    uint constant add = 6;

    function update(uint _A, uint _B) public {
        A = _A;
        B = _B - add;    }

    function increase(uint _increase) public {

        B = B + _increase;
    }

    function decrease(uint _decrease) public {

        A = A - _decrease + 4;
    }
}
