pragma solidity ^0.8.0;
contract G {
  address[] public p;
  mapping(uint96 => address) public m;
  function g() public {
    p.push(address(0x1));
    p[1]=address(0xdeadbeef);
  }
  function f() public {
    m[1] = address(0xdeadbeef);
  }
}

pragma solidity ^0.8.0;
contract G {
  address[] public p;
  mapping(uint96 => address) public m;
  uint96 public N;
  address[] public x;
  enum Enum {One, Two, Three}
  mapping(Enum => uint96) public e;
  function g() public {
    p.push(address(0x2));
    p[1]=address(0x345);
  }
  function f() public {
    m[1] = address(m[3]);
    m[3] = address(100);
  }
}
