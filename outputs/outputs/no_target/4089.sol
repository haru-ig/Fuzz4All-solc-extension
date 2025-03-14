pragma solidity ^0.8.0;
contract S2 {
  uint constant s2_constant = 0xfad520000;
  uint internal constant s2_internal = 0xfad520000;
  uint public s2;
  function h(uint x) internal returns (uint) { return s2 = s2_constant; }
}

pragma solidity ^0.8.0;
contract S1 {
  uint private constant s1_constant = 0xfad530000;
  uint internal constant s1_internal = 0xfad530000;
  uint public s1;
  constructor() { s1 = s1_internal; }
  function h(uint x) internal returns (uint) { return s1 = s1_constant; }
}

contract C {
  S3 s3;
  S2 s2;
  S1 s1;
  function f(uint x) public { if (s3.h(x)!= s2.h(x)) revert(); }
  function g(uint x) public { if (s3.h(x)!= unchecked(s2.h(x))) revert(); }
  function h() public view returns (bool) { if (s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s3.h(s
