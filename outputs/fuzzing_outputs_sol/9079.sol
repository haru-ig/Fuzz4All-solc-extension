pragma solidity ^0.8.0;
contract Fallback {
  function goodCall(address addr) pure public returns (bytes memory) {
    bytes32 res;
    bytes32 buf;
    res = 0x1234567;
    uint x = uint8(_unknown());
    buf = abi.encode(res, res);
    uint addr = uint8(_unknown());
    buf[3] = addr;
    return abi.encode(x, buf);
  }
}
