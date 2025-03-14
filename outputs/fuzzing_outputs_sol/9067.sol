pragma solidity ^0.8.0;
contract Caller {

  fallback Receive fallback() external payable;
  receive() external payable {}


  function badReceive() public pure returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    buf = abi.encode(msg.value, uint256(uint160(msg.sender)), address(this));
    result = abi.encode(x, buf);
    return result;
  }

  function simpleFallback() public pure returns (bytes memory) {
    bytes memory result;
    result = abi.encode(uint(0));
    return result;
  }

  function twoReceives() public pure returns (bytes memory) {
    bytes memory result;
    bytes memory buf;
    uint addr = 0x11111111111100000000000000000000000000000000000000000000000000000;
    uint x = 0x55555555555555555555555555555555555555555555555555555555555;
    buf = abi.encode(uint(0xFF), address(this), uint256(0x1234));
    result = abi.encode(x, buf);
    return result;
  }
}
