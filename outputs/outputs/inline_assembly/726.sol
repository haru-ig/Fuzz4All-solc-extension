pragma solidity ^0.8.0;
contract Mutator13 {
 function testMethod(uint a, uint  b) public {
     uint  _ret;
 assembly {
 _ret :=  add(a, b)

 }
 require(_ret >= 101 && _ret <= 200);
}
}
