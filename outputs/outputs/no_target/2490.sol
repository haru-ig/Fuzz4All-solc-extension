pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts080_v18115 {
  constructor () public {}
  mapping(uint256 => address[]) _oldAddresses;
  function oldAddresses() public pure returns(address[] memory) { return _oldAddresses[(uint256(-3))]; }
  function f() internal pure returns(uint256) { uint256 c; unchecked { uint256 sc = 2048; } return c;}
  function g(uint256 a) internal pure returns(uint256) { uint256 c; unchecked { uint256 b; b = a + a; c = sc << 8; } return c;}
  function h() internal pure returns(uint256) { uint256 c; unchecked { uint256 b; b = -a; c = ((sc < 0) || (b >= (uint256(uint160(-1) << (8 * sizeof(uint160) - 8)))))? 1 : b; } return c;}
  function i0() public pure returns(uint256) { return h(); }
  function i1() public pure returns(uint256) { return f(); }
  function m() internal pure returns(uint256) { uint256 c; unchecked {uint256 sc; c = 0x40000000000000000; } return c;}
  function n() public pure returns(uint256) { uint256 c; unchecked { uint256 sc; c = 0x3fffffffffffffff; } return c;}
}
