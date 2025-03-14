pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v070 {
  mapping (uint256 => uint256) public mData;
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = a; } return c;}
}
contract mutationsolidity_legacycontracts0811_v0807_v08099 {
  uint256 public a; uint256 public b; uint256 public c; uint256 public d; uint256 public e; uint256 public f;
  constructor () public {require(a >= 0, "a must be non-negative"); b = 1; c = 1; d = 1;}
  constructor (uint256 _a) public {require(_a >= 0, "a must be non-negative"); b = 1; c = 1; d = 1;}
}
contract mutationsolidity_legacycontracts0811_v070 {
  uint256 public a; uint256 public b; uint256 public c; uint256 public d; uint256 public e; uint256 public f; a = 11; b = 11; c = 11; d = 11; e = 11; f = 11;
  constructor () public {require(a >= 0, "a must be non-negative"); b = 1; c = 1; d = 1;}
  constructor (uint256 _a) public {require(_a >= 0, "a must be non-negative"); b = 1; c = 1; d = 1;}
}
