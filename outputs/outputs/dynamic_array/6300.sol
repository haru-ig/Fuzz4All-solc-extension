pragma solidity ^0.8.0;
contract b {
  function get() public view returns (bytes memory) {
    bytes memory x = new bytes(4);
    x[0] = 97;
    x[1] = 108;
    x[2] = 111;
    x[3] = 114;
    return x;
  }
}
