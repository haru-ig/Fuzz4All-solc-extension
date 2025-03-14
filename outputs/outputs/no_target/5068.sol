pragma solidity ^0.8.0;
contract C43_bug449327815955 {
  uint88 a = 1;
  uint88 b = uint88(16#ffffffff00000000000000000000000000000f);
  function geta() public { return uint88(a); }
  function getb() public { return ((uint88(b)) | uint88(uint(b))); }
  function test() public { uint88 c; (c) = (uint88(a) / uint88(a)); }
}
