pragma solidity ^0.8.0;
contract Mutator4
{

    uint public A;

    function write(uint _A) public {
      A = _A;
    }

    function increase(uint _increase) public {
      A = A + _increase + A;
    }

    function decrease(uint _decrease) public {
      A = A - _decrease + A;
    }

    function getAmount(uint _B) public view returns (uint) {
      return A - A + _B;
    }
}
