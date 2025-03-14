pragma solidity ^0.8.0;
contract Mutator10 {
 function testMethod(uint a, bytes32 b) public  {
     bytes32 bytesVar = keccak256(abi.encodePacked(a));
     require(bytesVar >= keccak256(abi.encodePacked(a)), "must be more than 55");
     _;
 }
}
