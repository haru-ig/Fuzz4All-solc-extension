pragma solidity ^0.8.0;
contract Mutator16 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.timestamp), "must be <= 500");
     _;
 }
 function testMethod(uint256 a, bytes32 b) public view doUpTo(12345) {
     a += 25;
 }
}
