pragma solidity ^0.8.0;
 contract Mutator14 {
 function testMethod(uint a, uint  b) public {
      uint _ret;
      uint  _ret1;
      assembly {
      _ret := add(a, b)
     _ret1 :=  sub(a, b)
 }
      require(_ret >= 101 && _ret <= 200 || _ret1 >= 101 && _ret1 <= 200);
}
}
