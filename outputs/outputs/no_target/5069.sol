pragma solidity ^0.8.0;
contract C40_bug405547981132 {
  uint88 b = 0xfffffff;
  function set() public { uint a; uint160 b; a = uint(uint160(uint8(uint8(b)))); }
}
