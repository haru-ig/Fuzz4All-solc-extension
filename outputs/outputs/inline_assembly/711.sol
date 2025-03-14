pragma solidity ^0.8.0;
contract Mutator11 {
 function testMethod(uint a, bytes32 b) public  {
     bytes32 bytesVar = keccak256(abi.encodePacked(a));
 assembly {
 sstore(0x4c, add(add(bytesVar, 1), 1))
 }
 require(bytesVar >= keccak256(abi.encodePacked(a)), "must be more than 55");
}
}
