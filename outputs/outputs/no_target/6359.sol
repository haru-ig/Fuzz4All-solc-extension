pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public returns (uint256) {
    a /= 2;
    return a;
  }
}


contract C {
  function add() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a + b;
    return res;
  }
  function sub() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a - b;
    return res;
  }
  function mul() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a * b;
    return res;
  }
  function div() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a / b;
    return res;
  }
  function exp() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function log0() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function log1() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function log2() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function log3() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function log4() public returns (uint) {
    uint a = 1;
    uint b = 1;
    uint res;
    res = a ** b;
    return res;
  }
  function wrap() public returns (uint) {
    uint a = -1;
    uint b = 1;
    uint res;
    res = a << b;
    return res;
  }
  function mod() public returns (uint) {
    uint a = -1;
    uint b = -1;
    uint res;
    res = a % b;
    return res;
  }
  function modWithOverflow() public returns (uint) {
    uint a
