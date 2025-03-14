pragma solidity ^0.8.0;
contract Caller {
  function badCall() public returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    buf = abi.encode(uint256(x));
    result = abi.encode((uint x) + (uint64(buf)));
    return result;
  }
}
