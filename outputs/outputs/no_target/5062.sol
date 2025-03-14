pragma solidity ^0.8.0;
contract C40_bug405547981132 {

  uint88 b = 0xfffffff;
  function set() public { uint88 a = uint88(((uint88(uint(b)) | uint88(uint(b))) / 100)); }
}
pragma solidity ^0.8.0;
