pragma solidity ^0.8.0;
 contract Mutator13 {
 function testMethod(uint a, uint b) public {
     uint _ret = a+b;
 assembly {
     _ret := (add(add(add(a, 0), b), 0), b)
 }
 require(_ret >= 101 && _ret <= 200);
}
}
