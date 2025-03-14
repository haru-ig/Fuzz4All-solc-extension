pragma solidity ^0.8.0;
contract Mutator57
{
    uint public A;
    function write(uint _A) public {
      A = _A;
    }
    function increase(uint _increase) public {
      A = A + _increase;
    }
    function decrease(uint _decrease) public {
      A = A - _decrease;
    }
}
