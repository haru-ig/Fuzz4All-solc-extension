pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics {
  uint public r;
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  constructor() {
    r = 1;
    d = address(b);
    g = 2;
    a = address(c);
    a = address(d);
    a = a;
    d = a;
    a = b;
    b = c;
    b = d;
  }
  function getG() public view returns (uint) {
    return g;
  }
  function check(address target) public view returns (bool) {
    return target == c;
  }
  function getA() public view returns (address) {
    return a;
  }
  function getB() public view returns (address) {
    return b;
  }
  function getC() public view returns (address) {
    return c;
  }
  function getD() public view returns (address) {
    return d;
  }
  function getE() public view returns (address) {
    return e;
  }
  function check2(address target) public view returns (bool) {}
  function setG() public {
    g = 3;
  }
}
