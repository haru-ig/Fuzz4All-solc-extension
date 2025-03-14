pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint[20] private data;
  function f() public pure returns(uint) { return data[20]; }
  function g() pure public {  data[20] = 1; }
  function h() public returns(uint) { return f(); }
  function i() public returns(uint) { b0(); }
  function j() public returns(uint) { b1(); }
  function k() public returns(uint) { t; }
  function l() public returns(uint) { t; }
  function m() public returns(uint) { t; }
  function n() public returns(uint) { t; }
  function o() public returns(uint) { t; }
  function p() public returns(uint) { t; }
  function q() public returns(uint) { t; }
  function r() public returns(uint) { t; }
  function s() public returns(uint) { t; }
  function t() public returns(uint) { t; }
  function u() public returns(uint) { t; }
  function v() public override returns(uint) { t; }
}

contract SemanticallyEquivalent19 {
  uint[20] private data;
  function f() public pure returns(uint) { return data[20]; }
  function g() pure public {  data[20] = 1; }
  function h() public returns(uint) { return f(); }
  function i() public returns(uint) { b0(); }
  function j() public returns(uint) { b1(); }
  function k() public returns(uint) { t; }
  function l() public returns(uint) { t; }
  function m() public returns(uint) { t; }
  function n() public returns(uint) { t; }
  function o() public returns(uint) { t; }
  function p() public returns(uint) { t; }
  function q() public returns(uint) { t; }
  function r() public returns(uint) { t; }
  function s() public returns(uint) { t; }
  function t() public returns(uint) { t; }
  function u() public returns(uint) { t; }
  function v() public override returns(uint) { t; }
}
