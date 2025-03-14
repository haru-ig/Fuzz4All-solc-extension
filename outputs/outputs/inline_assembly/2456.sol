pragma solidity ^0.8.0;
contract Mutator21
{
    uint public A;
    uint public B;
    constructor(uint _A, uint _B){
      A = _A;
      B = _B;
    }
    function increamse(uint _increase) public {
      A = A + _increase;
      B = B + _increase;
    }
    function decrease(uint _decrease) public {
      A = A - _decrease;
      B = B - _decrease;
    }
}
