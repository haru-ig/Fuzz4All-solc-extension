pragma solidity ^0.8.0;
contract Convert {
  function toHex(uint32 x) pure internal returns (string memory s) {
    bytes memory bts = new bytes(4);
    bts[0] = bytes1(uint8(x));
    bts[1] = bytes1(uint8(x >> 8)));
    bts[2] = bytes1(uint8(x >> 16)));
    bts[3] = bytes1(uint8(x >> 24)));
    s = string(bts);
  }
}
