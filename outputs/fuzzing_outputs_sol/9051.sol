pragma solidity ^0.8.0;
contract Good {
  bytes constant BYTES_0 = new bytes (0);
  event CallEvent(bytes _arg0);
  function goodCall() public view returns (bytes memory) {
    CallEvent(BYTES_0);
    return BYTES_0;
  }
}
