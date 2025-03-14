pragma solidity ^0.8.0;
contract Mutator12 {
 event E(bytes32 indexed eventLog, uint indexed intParam, bytes32 param, uint a);
 function testMethod(uint a) public {
     E( "Hi", 17, "There", a);
 assembly {
 }
}
}
