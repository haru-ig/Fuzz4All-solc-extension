pragma solidity ^0.8.0;
contract Caller {
  function badCall(bytes memory buf) pure public returns (bytes memory) {
    bytes memory result;
    uint addr = 0x111111111111000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bytes memory data = abi.decode(buf, (bytes));
    result = abi.encode(x, data);
    return result;
  }
  function goodCall() payable public returns( bytes memory ) {
    return "hi";
  }
  function goodCall2() public returns (bytes memory ) {
    return "hi";
  }
  function goodCall3() pure public returns (bytes memory ) {
    return "hi";
  }
}
