pragma solidity ^0.8.0;
contract C {
  address c;
  uint public a;
  C.M[] f1 = new C.M[](2);
  mapping(uint => uint8) g;
  struct M {
    uint8 f;
  }
}
contract D {
  mapping(uint => mapping(uint => mapping(uint => uint8))) h;
}
contract E {
  mapping(uint => mapping(uint => mapping(uint => uint8))) i;
}
