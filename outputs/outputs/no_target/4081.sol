pragma solidity ^0.8.0;
contract S4 {
  uint internal constant s4_internal = 0xfad510000;

  uint public s3;
  address public publicVar;
  uint512 public uint512Var;
  uint32 public uint32Var;
  function h() internal returns (uint) { return s3 = s4_internal; }
}
