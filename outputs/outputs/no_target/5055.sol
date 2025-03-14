pragma solidity ^0.8.0;
contract C40_bug405547981136 {
  uint88 a = 3 ** 26 - 1;
  function get() public view returns (uint88 b) { return uint88(((uint88(uint(a)) | uint88(uint(a))) / 100)); }
  function set() public { a++; }
}

pragma solidity ^0.8.0;
contract C40_bug405547981134 {
  uint88 a = 3 **27;
  function get() external view returns (uint88 b) { return uint88(((uint88(uint(a)) | uint88(uint(a))) / 100)); }
  function set() public unchecked { a++; }
}
