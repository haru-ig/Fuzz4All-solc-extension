pragma solidity ^0.8.0;
contract Mutator
{

    uint public A;
    uint public B;
    uint constant increment = 5;
    uint add = 6;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B + add - increment;
    }
    function increase(uint _increase) public {
        B = B + add + _increase;
    }
    function decrease(uint _decrease) public {
        A = A + add - _decrease + increment;
    }
    function reset() public {
        B = B - add + increment;
        A = A + add;
    }
    function restore() public {
        A = A + add - B;
        B = 0;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
