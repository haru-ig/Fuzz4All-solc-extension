pragma solidity ^0.8.0;
contract Mutator
{
    uint A;
    uint B;
    uint add = 6;
    function update(uint A, uint B) public {
        A = A;
        B = B - add;
    }
    function increase(uint increase) public {
        B = B + increase;
    }
    function decrease(uint decrease) public {
        A = A - decrease + 4;
    }
}
