pragma solidity ^0.8.0;
contract E {
  uint256 a;
}
contract I {
  function f() public pure {
 E e = new E;
 e.a = 0;
 }
}
contract M {
  function f() public pure {
    E e = new E;
    uint256 b = e.a;
  }
}
contract K {
  constructor() public {}
  function f() public pure {
    I i = new I;
    i.f();
  }
}
contract E {
  uint256 a;
  constructor() public {
    a = uint256(uint160(-1));
  }
}
contract I {
  constructor() public {}
  function f() public pure {
    E e = new E;
    address a = -uint1(uint256(e.a));
  }
}
contract M {
  address a;
  constructor() public {
    a = address(-1);
  }
  function f() public pure {
    address b = address(uint256(- uint(uint180(a))));
  }
}
contract A {
  string s;
  constructor(string memory z) public {
    s = z;
  }
}
contract B {
  modifier m(uint n) {
    n++;
    break;
  }
  uint i;
}
contract C is B {
  function f(uint x) public pure {
    (uint x_=1, uint v_ =0, v_ =x, v_ =x);
    i = x;
  }
}
contract D final(C) {
  uint18 j;
  constructor(uint18 _j) public {
    j = _j;
  }
}
contract E {
  uint160 a;
}
contract I {
  constructor() public {}
  function f() public pure {
    E e = new E;
    address a = uint160(e.a);
  }
}
contract M {
  address a;
  constructor() public {
    a = address(0);
  }
  function f() public pure {
    address b = address(uint(0) ^ (uint256(uint160(a)) + uint256(uint31(uint160(a)))) ^ (uint256(uint160(a)) + uint256(uint31(uint160(a)))) ^ (uint256(uint8(uint32(uint160(a)))) + uint256(uint23(uint160(a))))));
  }
}
contract A {
  function a(string memory x) public {
    assembly {
      mstore8(0xad0, mload8(0x80))
      sstore(0xb70, sload(0xb0))
      sstore(0xc20, sload(0xcb0))
