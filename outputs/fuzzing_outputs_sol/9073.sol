pragma solidity ^0.8.0;
contract Caller {
  function badReceive(uint i, uint j) external payable pure {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    buf = abi.encode(i, j);
    result = abi.encode(x, buf);
    assembly {
      mstore(0, result)
      mstore(50, 32)
      sstore(0, 0x50)
    }
  }
}
