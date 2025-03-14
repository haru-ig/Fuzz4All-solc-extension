pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  bytes32 x_bytes;
  uint256 b_c;
  uint256 a1;
  address c;
  uint256 t;
  uint256 a1_uint256;
  constructor (uint256 b, uint256 c, uint256 e, uint256 d, uint256 xprev) public {
    b_c = b;
    c = e;
    t = xprev;
    x_bytes = abi.encodePacked(c1(1));
    uint256 t1 = 256 * 129 - 1 + 1;
    x = 2 + e + e - d + xprev + t1 + c + d;
    uint256 b1 = uint256(keccak256(abi.encodePacked(uint256(keccak256(abi.encodePacked("\x63\x80\x06\x00"))) + uint256(keccak256("\x64\x80\x06\x00"))))));
    uint256 a1 = 7 + uint256(keccak256(abi.encodePacked(uint256(keccak256(abi.encodePacked("\x63\x80\x06\x00"))) + uint256(keccak256("\x64\x80\x06\x00"))))));
    a1_uint256 = a1;
  }
}
