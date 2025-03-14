pragma solidity ^0.8.0;
contract Convert {
  function toHex(uint x) public pure returns (string memory) {
    if(x == 0) {
      return "0x0";
    }
    uint len = 0;
    do {
      x = x / 16;
      len++;
    } while(x!= 0);
    bytes memory b = new bytes(len);
    for(uint j = len - 1; j >= 0; j--) {
      bytes32 n = uint2bytes32(bytes32(uint(x) % 16));
      b[j] = n[48]; x /= 16;
    }
    return string(b);
  }
}
