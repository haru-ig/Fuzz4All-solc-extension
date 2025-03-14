pragma solidity ^0.8.0;
contract Mutator8 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be <= 500");
     _;
 }
 function testMethod(uint256 a, bytes32 b) public view doUpTo(57984961498182983) {
     if (a == 0) a = 7;
 }

}
