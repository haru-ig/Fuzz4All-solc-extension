pragma solidity ^0.8.0;
 contract Mutator12 {
 function testMethod(uint a) public {
     uint  _ret;

 assembly {
 _ret := a
 }
 require(_ret >= 55);
}
}
