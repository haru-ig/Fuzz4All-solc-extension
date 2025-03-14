pragma solidity ^0.8.0;
contract Semantics_inline2 {
  uint constant constant1 = 600;
  uint constant constant2 = 10;
  uint constant constant3 = 90;
  uint constant constant4 = 500;
  bool constant true_bool = false;
  uint constant constant5 = 100;
  uint constant constant6 = 10;
  uint constant constant7 = 20;
  uint constant constant8 = 79;

  uint x;
  constructor() {
    x = y();
  }
  function y() public view returns(uint) {
    return Semantics_inline1.constant1 + Semantics_inline1.constant2 + Semantics_inline1.constant3 + Semantics_inline1.constant4 +
       Semantics_inline2.constant2;
  }
  function z() public view returns(uint) {
    require(true_bool);
    return constant1 + constant2 + constant3 + constant4 + constant5 + constant6 + constant7 + constant8;
  }
}
