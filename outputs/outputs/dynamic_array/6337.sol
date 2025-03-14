pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  uint8 s3;
  uint8[256] bts;
  uint8[256] t3;
  uint8[256] s3_i;
  mapping(uint256 => bytes4) m3;






  constructor () public {
    s1 < 36;
    s1 = 7;
    s2 = 36;
    s3 < 12;
    a(s3);
    s1_bytes <2;
  }
    function f(uint256 s3_) public {
    s2 = s3_;
  }
  function b() public { d(s3, s3_i, bts); }
  function d(uint s_) public { s1 = s_; }
  function g(uint s_) public {s_ += 3;}
  function a(uint s_) public {s1++;g(s_);}
  function h() public {s1=33;}
  function c() internal {s1++;a(33);}
  function i() public returns (uint s) {
    return s;
  }
  function j() public returns (address s) {
    s1++;
    s2 = 33;
    return address(s);
  }
  function n1() public returns (uint) {
    return m3[s1];
  }
  function n2() public {
    s1++;
    a(33);
    s2 = 33;
  }
  function n3() public returns (uint, uint) {
    uint s = m3[1];
    bytes20 s20 = bytes20(s);
    require((1 == 0));
    unchecked {
      s20.uintData();
      s20 = s20 << 20;
      s20 = s20 >> 20;
      s20.uintData();
    }
  }
  function n4() public returns (uint, uint, uint) {
    (uint s, uint s2) = (m3[1], m3[s1]);
  }
  function n5() public returns (uint, uint, uint, uint) {
    (uint s, uint s2, uint s3) = (m3[1], m3[s1], m3[1]);
    (s3, s2) = (s, s2);
  }
  function n6() public returns (uint, uint, uint, uint
