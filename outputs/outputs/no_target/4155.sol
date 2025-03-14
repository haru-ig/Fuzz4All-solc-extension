pragma solidity ^0.8.0;
contract M0{

  uint internal a;
  uint internal b;
  function f() public returns (uint) { return a * b + 1; }

  receive(){}
}
contract M1{
  function f() public {
    uint x = 10**18;
  }
}
contract M2{
  function g() public returns (uint) {
    uint x = -10;
  }
}
contract M3{
  function g() public returns (uint) {
    uint x = 10 + 8;
  }
}
contract M4{
  function h() public returns (uint) {
    assembly{
      div x,1
    }
  }
}
contract M5{
  function g() public returns (uint) {
    uint x = 0x1000000000000000000000000000000000000000000001;
    x = int(x);
    uint z = x;
  }
}
contract M6{
  function h() public returns (uint) {
    uint z = 10;
    z = int(uint(z));
    uint z2 = uint(z);
  }
}
contract M7{
  function f() public returns (uint a) {
      uint x = 0xDA3ED00D02DE4B86439ED27352747EFE63857E3B98B93E5C1579FB8FCB0E4038;
      a = uint(x);
  }

  function f1() public returns (uint a) {
    uint x = 0xDA3ED00D02DE4B86439ED27352747EFE63857E3B98B93E5C1579FB8FCB0E4038;
    uint x1 = int(x);
    a = uint(x1);

    uint x2 = int(uint(x));
    a = uint(x2);

  }

  function f2(uint a) public returns (uint) {
    a = uint(uint(a));
  }
}
contract M8{
  function g() public returns (uint) {
    return (uint)-11;
  }

  function g1() public returns (uint a) {
    a = uint(-10);
    a = uint(11);
  }
}
contract M9{
  function f() public returns (uint) {
    uint a = -10-0xFF*1;
    return a + 10;
  }

  function f1() public returns (uint) {
    uint x = 0x100000000000000000
