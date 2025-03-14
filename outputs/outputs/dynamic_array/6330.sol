pragma solidity ^0.8.0;
contract c {
  uint8 b;
  uint8 s1;
  uint8 s2;
  uint8 s3;
  address[] public  _addr;
  constructor() public { _addr.push(address(0xffffffff)); }
  function f() public { s3 = 1; }
  function set(bytes32 label, uint8 x) public { b = x; s2 = label.length; _addr.push(x); }

  function call(bytes32 label, bytes x) public returns (uint8 y) { s1 = _addr.length; s3 = 0; b = 0; return _addr.length; }
  function init(bytes32 label) public returns (uint8 y) { b = 0; s2 = label.length; return 0; }
  function change(bytes32 label) public { _addr[_addr.length.sub(1)] = label.toAddress(); b = 1;}
  modifier m1() { b = 0x1; s2 = s1; b = b*2; require(b == 2, "M"); }
  modifier m2() { require(s1 == 2, "M"); }
  modifier m3() { require(s1 == 1, "M"); }

  function go(uint x) public {
    require(b == 1, "M");
    require(x >= 0x02 && x <= 0x04, "M");
    s1 = x;
  }
}
