pragma solidity ^0.8.0;
contract test57_new {
  uint32[42] private d57;
  constructor() {
    d57 = new uint32[](42);
  }
  function test() public returns (uint256) {
    return (d57[0]);
  }
}

pragma solidity ^0.8.0;
contract test58 {
  function test() public returns (uint256) {
    uint256 s3 = 0x111111111111111111111111111111111111111111111111111111;
    (uint256 c, uint256 l, uint256 r) = bytes2tuple(s3);
    return (c);
  }
}
