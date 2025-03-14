pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v0809 {
  constructor () public {}

  function f() internal pure returns(uint256) { uint256 c; uint256 a = 256; }
  function g(uint256 a) internal pure returns(uint256) { uint256 c; uint256 a = 256; }
}
contract mutationsolidity_legacycontracts080_v0807 {
  constructor () public {}

  function f() public pure returns(uint256) { return 256; }
  function g(uint256 a) public pure returns(uint256) { return a; }
  function h() public pure returns(uint256) { return 256; }
}
