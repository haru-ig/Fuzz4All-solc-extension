pragma solidity ^0.8.0;
contract Mutant5a
{
 uint public x;
 constructor() public {
  x = 42;
 }
 function test() public pure returns (uint) {
  uint n;
  assembly {
   n := mstore(1)
  }
  return n;
 }
 receive() external payable {}
}
