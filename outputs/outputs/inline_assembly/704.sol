pragma solidity ^0.8.0;
contract Mutator10 {
 function testMethod(uint a, bytes32 b) public view doUpTo(50) {
     require(b >= keccak256(abi.encodePacked(a)), "must be keccak256 of bytes");
 }
}
