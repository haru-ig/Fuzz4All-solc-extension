pragma solidity ^0.8.0;
contract Mutator44
{
    uint public A;
    uint public B;
    uint public C;
    constructor(uint _A) {
      A  = _A;
       B = _A;
    }
    function substract(uint _increase) public {
      A = A;

    }
    function multiply(uint _increase) public {
      B = B * _increase;
      C = A * _increase;
    }
}
