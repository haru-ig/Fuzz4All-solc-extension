pragma solidity ^0.8.0;
contract C40_bug405575731819 {
  function set0() public pure { address x; x = 0x016; uint88 y = uint88(uint160(uint(uint8(y)))); }
  function set1() public pure { address x; x = 0x00016; uint88 y = uint88(uint160(uint(uint8(y)))); }
  function set2() public pure { address x; x = 0x01600; uint88 y = uint88(uint160(uint(uint8(y)))); }
}
