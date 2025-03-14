pragma solidity ^0.8.0;
contract P29 {

  constructor() {
    setX(100);
  }
  function setX(uint256 _x) public {
    x = _x;
  }
  uint public x;
}
contract P30 {

  constructor(uint constant _n) {
    x = _n;
  }
  uint256 public x;
}
contract P31 {

  struct Record {
    uint foo;
    uint bar;
  }
  function f(Record memory _r) public {
    foo = _r.foo;
    bar = _r.bar;
  }
  uint256 public foo;
  uint256 public bar;
}
contract P32 {
  struct Record {
    uint a;
    uint b;
  }
  constructor(uint _b, uint _a) {
    x = _a;
  }
  uint public x;
}
contract P33 {
  function f(uint _a) public pure returns (uint) {
    return _a + _a/2;
  }
}
contract P34 {
  function f(uint _a) public pure {
    uint[] memory b = new uint[](1);
    b[0] = _a + 1;
  }
}
