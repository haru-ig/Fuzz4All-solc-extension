pragma solidity ^0.8.0;
contract Mutator20
{
    uint public A;
    constructor(uint _A){
      A = _A;
    }
    function increamse(uint _increase) public {
      A = A + _increase;
    }
    function decrease(uint _decrease) public {
      A = A - _decrease;
    }
}
