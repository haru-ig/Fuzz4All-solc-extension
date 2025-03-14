pragma solidity ^0.8.0;
contract C39_bug424186835749 {
  bytes88 h = 0x19;
  function set() public { bytes88 g; bytes88 e; bytes160 d; e = bytes88(bytes8(h)); d = bytes160(bytes16(bytes88(e))); }
}
