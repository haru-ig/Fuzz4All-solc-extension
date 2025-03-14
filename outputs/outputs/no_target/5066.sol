pragma solidity ^0.8.0;
contract C41_bug406020236531 {
  uint88 b = 0xfffffff;
  function set() public { uint88 a = uint88(((uint88(uint(b)) | ~uint88(uint(b))) / 100)); }
}
