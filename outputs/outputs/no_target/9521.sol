pragma solidity ^0.8.0;

interface Interface14 {
  event Log18(
    uint a,
    uint b
    );
  event Log32(uint a, uint b);
  event Log64(uint a, uint b);
  event Log65(
    uint a,
    uint b,
    uint c,
    uint d,
    uint e,
    uint f
  );
  function Log18(uint _x, uint _y) public returns (uint);
  function Log65(uint _x, uint _y, uint _z, uint _0, uint _1, uint _2) public returns (uint);
  function Return16(uint _x) public returns(uint16);
  function Return32(uint _x) public returns(uint32);
  function Return64(uint _x) public returns(uint64);
  function Return128(uint _x) public returns(uint);
  function Return256(uint _x) public returns(uint);
}

pragma solidity ^0.8.0;
struct Struct41 {
  uint16 _internal;
  uint32 _external;
  uint _fixed;
}
struct Struct37 {
  uint _internal;
  uint _external;
  uint _fixed;
}
struct Struct39 {
  uint _internal;
  uint _external;
  uint _fixed;
}
contract Contract38 {
  Struct41 data12345;
  Struct37 data6789;
  Struct39 data12345789;
  struct { uint _internal; } s1;
  enum Enum20 { A }
  bool public _static;
  virtual function DoSomething(Struct37 memory _x, uint16 _y) public virtual;
  function DoSomething(uint _x, uint44 _y, uint256 _z, uint _0) public virtual;
  function DoSomething(
    uint _x,
    uint _y,
    bool _z,
    uint _0,
    uint _1,
    uint _2,
    uint _3,
    uint _4,
    uint _5
  ) public virtual;
  function DoSomething(
    uint _x,
    uint _y,
    uint _z,
    uint _0
  ) public virtual;
  function DoSomething(uint _x, uint _y, uint _z) public virtual;
  function DoSomething(uint _x) public virtual;
  function DoSomething(uint _x, uint _y, uint _z) public virtual;
  function DoSomething(uint _x, uint _y, uint _z) public virtual;
  function DoSomething(uint16 _x, uint _y, uint _z) public virtual;
  function DoSomething(uint _x, bool _y) public virtual;
  function DoSomething(uint _x, uint _y) public virtual;
  function DoSomething(uint _x, uint _y, uint _z) public
