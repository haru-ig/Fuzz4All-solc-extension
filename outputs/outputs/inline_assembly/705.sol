pragma solidity ^0.8.0;
contract Mutator11 {
 function testMethod(uint a, bytes32 b) public  {
     bool boolVar = true;
 assembly {
 sstore(0x0, add(sload(0x4c), 1))
 sstore(boolVar, false)
 sstore(0x4c, add(sload(0x4c), 1))
 }
 require(a > 55, "must be more than 55");
}
}
