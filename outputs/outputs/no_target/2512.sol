pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0812_v0812 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = 256; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = a; } return c;}
}




pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts08v2_v0834_ABIencoderv2 is mutationsolidity_legacycontracts0812_v0812 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = a; } return c;}
  function f() public { }
}
contract mutationsolidity_legacycontracts08v2_v0834_ABIencoderv2 is mutationsolidity_legacycontracts0813_v0813 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = a; } return c;}
  function f() public { }
}
/* Please create a semantically equivalent program to the previous
