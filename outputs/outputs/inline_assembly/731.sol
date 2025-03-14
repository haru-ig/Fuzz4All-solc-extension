pragma solidity ^0.8.0;
 contract Mutator15 {
 function testMethod(uint a, uint  b) public {
      uint _ret, _ret1;
      uint  _tempA;
 uint40 _tempA1;
      assembly {
      _tempA := add(a, b)
     _tempA1 :=  sub(a, b)
 _ret := and(a, b)
      _ret1 :=  xor(a, b)
}
      require(_tempA >= 101 && _tempA <= 200 || _tempA1 >= 101 && _tempA1 <= 200);
}
}
