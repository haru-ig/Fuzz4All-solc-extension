pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v18115 {
  constructor () public {}
  function f() internal pure returns(uint256 _value) { uint256 _value; unchecked {uint256 _value = 2048; } return _value;}
  function g(uint256 a) internal pure returns(uint256 _value) { uint256 _value; unchecked {uint256 _value = a; } return _value;}
  function h() external pure returns(uint256 _value) { uint256 _value; unchecked {uint256 _value = c(2048); } return _value;}
}
