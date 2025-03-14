pragma solidity ^0.8.0;
contract Mutator10 {
 function testMethod(uint a, bytes32 b) public  {
     bool boolVar = true;

 assembly {
 sstore(0x4c, add(boolVar, 1))
 }
 require(a > 55, "must be more than 55");
}
}
