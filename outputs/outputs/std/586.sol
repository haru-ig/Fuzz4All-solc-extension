pragma solidity ^0.8.0;
contract MutatedHello {
  uint8 constant Y = 16;
  uint8 c;
  uint8 constant X = 16;
  function mutated_add(uint8 n) public pure returns(uint8) {
    c = c + Y;
    return c;
  }
  function mutated_sub() public pure returns(uint8) {
    c = 31 -mod(16 - y);
    return c;
  }
  function mutated_mult() public pure returns(uint8) {
    c = 32 * X;
    return c;
  }
  function mutated_div() public pure returns(uint8) {
    c = 16 / Y;
    return c;
  }
  function mutated_neg() public pure returns(uint8) {
    c = -4;
    return c;
  }
  function mutated_and() public pure returns(uint8) {
    c = 4 & 25;
    return c;
  }
  function mutated_or() public pure returns(uint8) {
    c = 8 | 1;
    return c;
  }
  function mutated_xor() public pure returns(uint8) {
    c = 8 ^ 20;
    return c;
  }
  function mutated_shl() public pure returns(uint8) {
    c = 2 << X;
    return c;
  }
  function mutated_shr() public pure returns(uint8) {
    c = 4 >> X;
    return c;
  }
  function mutated_mod() public pure returns(uint8) {
    return mod(X);
  }
  function mutated_min() public pure returns(uint8) {
    c = min(72, 8);
    return c;
  }
  function mutated_min2() public pure returns(uint8) {
    c = min(25, 22);
    return c;
  }
  function mutated_max() public pure returns(uint8) {
    c = max(32, -16);
    return c;
  }
  function mutated_max2() public pure returns(uint8) {
    c = max(1, 16);
    return c;
  }
}
