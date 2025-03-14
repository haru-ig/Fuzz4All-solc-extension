pragma solidity ^0.8.0;
contract Mutator
{
    uint public A;
    uint public B;
    uint constant increment = 5;
    uint add = 6;
    uint remove = 3;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B + remove + _A + add - decrement;
    }
    function increase(uint _increase) public {
        B = B + _increase - remove + increment;
    }
    function decrease(uint _decrease) public {
        A = A + add + _decrease - decrement;
        B = B + _decrease - counter + remove;
    }
    function reset() public {
        B = B + remove - increment;
        A = 0;
    }
    function restore() public {
        B = B - remove + increment;
        A = A - remove;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
