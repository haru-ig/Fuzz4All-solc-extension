pragma solidity ^0.8.0;
contract Mutator44
{
    uint public A;
    constructor(uint _A){
      A = _A;
    }
    function increamse() public {
      A = A + 1;
    }
    function decrease(uint _increase) public {
      A = A - _increase;
    }
}
