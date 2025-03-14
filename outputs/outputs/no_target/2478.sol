pragma solidity ^0.8.0;
contract mutationv079 {
  mutability uint 0x7800 = 5;
  mutability uint 0x7000 = 8;
  function f() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc = 32; } return c;}
}
library mutation {
  function f(uint c) internal pure { uint256 sc = 8; }
  function mutability_f(uint b) internal pure returns(uint256) { uint256 sc = 32; }
}
