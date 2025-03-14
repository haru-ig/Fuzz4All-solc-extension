pragma solidity ^0.8.0;
contract Mutator13 {
 function testMethod(uint a) public returns(uint) {
     uint  _ret;
 assembly {
 _ret := a + a
 }
 require(_ret >= 6);
 return _ret;
 }
}
