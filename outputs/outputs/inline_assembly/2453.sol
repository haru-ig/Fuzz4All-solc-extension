pragma solidity ^0.8.0;
contract Mutator44
{
    uint public A;
    constructor() public payable
    {
      A = 5000e18;
    }
    function increamse() public {
      A = A + 1;
    }
    function decrease(uint _increase) public {
      A = A - _increase;
    }
}
