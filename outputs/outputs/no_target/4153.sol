pragma solidity ^0.8.0;
contract P7{
  mapping (address => uint[]) addrX;
  mapping (uint => uint) x;
  uint internal y;
  function h() internal returns (uint) { return x[y]; }
}
contract P8{
  function h() internal returns (uint) {
   x[256^32] = 1;
  }
}
