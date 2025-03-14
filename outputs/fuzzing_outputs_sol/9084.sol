pragma solidity ^0.8.0;
contract Caller {
  function goodCall() public pure returns (bytes memory) {
    bytes memory i_0x111111111111000000000000000000000000000000000000000000000000000;
    bytes memory i_0x11;
    bytes memory result;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    result = abi.encode(x, i_0x11i_0x11, i_0x11i_0x11i_0x11, i_0x11i_0x11i_0x11i_0x11,
      i_0x11i_0x11i_0x11i_0x11i_0x11i_0x11i_0x11i_0x11111111111000000000000000000000000000000000000000000);
    return result;
  }
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    buf = abi.encode(i, j);
    result = abi.encode(x, buf);
    return result;
  }
  function badCall2() public pure returns (uint256) {
    bytes memory i_0x11;
    bytes memory i_0x11i_0
