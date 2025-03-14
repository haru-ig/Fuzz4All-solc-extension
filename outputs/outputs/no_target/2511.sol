pragma solidity ^0.8.0;
interface contractaddresstest_legacycontracts0814_v0814 {
function d() public pure returns(address);
function e() public pure returns(address);
}
contract mutationsolidity_legacycontracts0815_v0815 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = a; return (a + 1); } return c;}
}
contract mutationsolidity_legacycontracts0816_v0816 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c;}
  function g(uint256 a, uint256 b) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = (a / b); } return c;}
  function h(uint256 c) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = (17 / 10) * c; } return c;}
  function i(uint256 c) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = (10 / 17) * c; } return c;}
}
contract mutationsolidity_legacycontracts0817_v0817 {
  constructor () public {}
  function f() public pure returns(address) { address c; unchecked { address sc = address(this); } return c;}
}
contract mutationsolidity_legacycontracts0818_v0818 {
  constructor () public {}
  function f() public pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; }
