pragma solidity ^0.8.0;
contract Fallback {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    buf = abi.encode(i, j);
    result = abi.encode(x, buf);
    return result;
  }
}
