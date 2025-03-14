pragma solidity ^0.8.0;
contract MutatorE
{
  uint constant add = 1;
  uint constant increment = 5;
  uint public B;
  uint public A;
  constructor() public {
      A = 1;
      B = 0;
  }
  function increase(uint _increase) public {
        B = B + add + _increase;
  }
  function decrease(uint _decrease) public {
        A = A + add - _decrease - increment;
  }
  function reset() public {
       A = A + add - B;
       B = 0;
  }
  function restore() public {
      A = A + add - B;
      B = 0;
  }
  function getAmount() public view returns (uint) {
     return B;
  }
}
