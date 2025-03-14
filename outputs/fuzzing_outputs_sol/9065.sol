pragma solidity ^0.8.0;
contract Caller {
  uint valueOne = 5;
  uint valueTwo = 7;
  event SendValue{
    modifier onlyValue(uint i);
    uint i;
    bytes payload;
  }
  function () public payable {
    uint i;
    bytes memory buf = abi.encode(valueOne, valueTwo);
    uint addr = 0x111111111111000000000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    function badCall(uint a, uint b2) pure public returns (bytes memory) {
      bytes memory result;
      bytes memory buf;
      uint addr = 0x111111111111000000000000000000000000000000000000000000000000000000000;
      uint x = uint8(uint64(addr));
      buf = abi.encode(a, b2);
      result = abi.encode(x, buf);
      return result;
    }
    function goodCall(uint a, uint b) external onlyValue(a) payable returns(bytes memory) {
      bytes memory result;
      bytes memory buf;
      uint addr = 0x11111111111100000000000000000000000000000000000000000000000000000;
      uint x = uint8(uint64(addr));
      buf = abi.encode(a, b);
      result = abi.encode(x, buf);
      return result;
    }
    function goodCall2(uint a) public {
      uint i;
      bytes memory buf = abi.encode(a);
      msg.sender.call{value: addr} {
        result = addr.call.value(()).value(addr + valueOne) {
          buf = abi.encode(a);
          i = addr.call.value(valueTwo) {
            buf = abi.encode(
