pragma solidity ^0.8.0;
contract Mutator42
{
    uint public A;
    uintpublic increase(uint _increase) public {
        A = A + _increase;
    }
    function decrease(uint _decrease) public {
        A = A - _decrease;
    }
}
