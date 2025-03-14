pragma solidity ^0.8.0;
 contract Mutator14 {
 function testMethod(uint a, uint  b) public {
     uint  _ret;
 assembly {
     _ret := a + b
     calldatacopy(0x12)
     astore(0x14)
     _ret := mload(0x14)
 }
 require(_ret >= 101 && _ret <= 200);
}
}
