pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  bytes32 s3;
  mapping(bytes32=>address) m;
  function g() public { m.put("test",[1,2]); }
  function f() public { m.put("test",address(this)); }
}
