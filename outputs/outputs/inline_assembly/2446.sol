pragma solidity ^0.8.0;
contract Mutator42
{
    uint public A;
    constructor(uint _A){
      A = _A;
    }
    function increase(uint _increase) public {
      A = A + _increase;
      A = A - _increase;
    }
    function decrease(uint _decrease) public {
      A = A + _increase;
      A = A - _decrease;
    }
}

pragma solidity ^0.8.0;
contract Mutator42
{
    uint public A;
    constructor(uint _A){
      A = _A;
    }
    function increase(uint _increase) public {
      A = A + _increase;
    }
    function decrease(uint _decrease) public {
      A = A + _increase;
      A = A - _decrease;
    }
}
