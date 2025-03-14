pragma solidity ^0.8.0;
contract C40_bug3276964_2 {
  uint160 b;
  function set() public { uint160 a = uint160(((uint160(uint(b)) | uint160(uint(b))) / 2)) % 2); }
}
