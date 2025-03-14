pragma solidity ^0.8.0;
contract S2 {
  event Evt(uint a);
  error Err(uint a);
  uint s2;
  uint f() payable external { return s2 > Msg.value; }
  function g() public returns (bool) { return s2 & s2 == 0; }
  function s() public payable returns (bool) { return Err.value > 0; }
  function s3() internal payable returns (bool) {
    Evt.emit(this);
    return s2 <= Msg.value;
  }
  function s32() internal returns (bool) {
    Err.emit(2);
    Err.value > 0;
    Err(1);
    return false;
  }
  function s7() external returns (bool) { return false; }
  function s4() external returns (bool) { return false; }
  function s25() internal payable returns (bool) { return 0 < bytes(3, "1")[0]; }
  function s512() external returns (bool) {
    s25;
    return 0x1 > 0;
  }
  function s464() public returns (bool) {return 0xabcdef00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
