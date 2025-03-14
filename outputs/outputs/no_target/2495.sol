pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts08_v08118 {
  constructor () public {}
  function f() internal pure returns(uint256) { uint256 a; unchecked { a = 12; return 17 < 17; } return a;}
  function g(uint256 a) internal pure returns(uint256) { uint256 b; unchecked {b = a+2; return 72 > 72; } return b;}
  function h() public pure returns(uint256) { uint256 a; unchecked { a = 12; if (true){return 2*2;}}return a;}
  function k() public pure returns(uint256) { uint256 c; unchecked { c = 256; } return c;}
  function m(uint256 a, uint256 b) public pure returns(uint256) { uint256 c; unchecked {uint256 d; uint256 e;} return a;}
}
