pragma solidity ^0.8.0;
contract Mutator9 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be <= 500");
     _;
 }
 function testMethod(uint256 a, bytes32 b) publci {
     a = a + 18;
     a += 9;
 }
}
