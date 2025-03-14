pragma solidity ^0.8.0;
contract MutatedX {
  uint8 constant X = 3;
  function main() public pure {
    uint8 y = 3;
    uint8 z = 7;
    uint8 a = mod(y);
    uint8 b = mod(z);
    uint8 c = mod2(y);
    uint8 d = mod2(z);
    bytes memory bytes = new bytes(2);
    bytes[2] memory other = [x, y];
    (a, b) = (b, a);
    bytes = [a, b];
    mutatedX(bytes, other);
    mutatedX(b, a);
    bytes = bytes;
    (a, b) = (z, a);
  }
  function mutatedX ( bytes memory, (uint8, uint8, uint256) memory ) public pure {}
}
