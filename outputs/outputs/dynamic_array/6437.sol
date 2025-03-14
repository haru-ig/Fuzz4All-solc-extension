pragma solidity ^0.8.0;
interface i00 {
  function m00(uint8 x) external;
  function m01(uint8 x) external;
}

contract Test01 is i,i00 {
  uint256 x1 = 1;
  uint8 p1 = 1;
  uint256 x11 = 1;
  uint8 p11 = 1;
  uint256 x2 = 1;
  uint8 p2 = 2;

  constructor() public {}

  function m() external payable returns (uint8) {
    p11 = x11;
    p1 = (p11 % 100) + p1;
    x2 = 2 + uint256(p1);
    if (uint256(p2) == 3) {
      i00(0x01).m01(x2);
      return x2;
    } else {
      i00(0x01).m01(x2);
      return p2;
    }
  }
}
