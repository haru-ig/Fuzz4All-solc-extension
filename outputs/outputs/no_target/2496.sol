pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v05512 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 256; } return c; }
}

pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v05014 {
  constructor () public {}
  function f() internal pure returns (uint256) { uint256 c; unchecked {uint256 sc = uint128(256); } return c;}
  function g(uint256 a) internal pure returns (uint256) { uint256 c; unchecked {uint256 sc = uint128(a); } return c;}
}

pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v00001 {
  constructor () public {}
  function f() internal pure returns (uint256) { uint256 c; unchecked { uint256 sc = uint64(256); } return c; }
  function g(uint256 a) internal pure returns (uint256) { uint256 c; unchecked { uint256 sc = uint64(a); } return c; }
}
