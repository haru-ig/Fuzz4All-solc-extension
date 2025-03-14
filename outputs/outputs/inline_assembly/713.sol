pragma solidity ^0.8.0;
contract Mutator20 {
 function testMethod(uint a, bytes32 b) public  {
     bytes32 bytesVar = keccak256(abi.encodePacked(a));
 a++;
 bytesVar++;
 assembly {
 sstore(0x6c, add(a, 1))
 sstore(0x63, add(b, 1))
 sstore(0x5a, add(bytesVar, 1))
 }
 require(bytesVar >= keccak256(abi.encodePacked(a)), "must be more than 55");
}
}
