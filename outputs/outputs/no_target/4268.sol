pragma solidity ^0.8.0;
contract P32 {
  uint256 myUint = 1 + 1;
  function test() {
    return myUint - 2;
  }
}
contract P33 {
  function fact(uint256 x) public pure returns (uint256) {
    return 2 ** x;
  }
}
contract P34 {
  uint256 x = 1 + 1;
  uint256 y = 1 + 1;
}
contract P35 {
  uint256 x = 1 + 1;
  uint256 y = 1 + 1;
}
contract P36 {
  uint256 x = 1 + 1;
  uint y = 1 + 1;
}
contract P37 {
  uint256 x = 1 + 1;
  uint y;
}
contract P38 {
  uint x;
  uint y;
}
contract P39 {
  uint x = 1 + 1;
  uint y = 1 + 1;
}
contract P40 {
  uint[] array;
  function get(uint i) public pure returns (uint) {
    return array[i];
  }
}
contract P41 {
  uint[] array;
  function get(uint i) public pure returns (uint) {
    return array[uint(i)];
  }
}
contract P42 {
  uint8 x;
}
contract P43 {
  function foo() public {}
}
contract P44 {
  mapping(uint256 => bool) public exists;
}
contract P45 {
  mapping(address => bool) public exists;
}
contract P46 {
  mapping(string => bool) public exists;
}
contract P47 {
  mapping(uint256 => uint) public exists;
}
contract P48 {
  enum E {
    a,
    b
  }
}
contract P49 {
  struct S {
    bool bl;
    uint8 x;
    uint8 y;
  }
}
contract P50 {
  struct S {
    bool bl;
    uint8 z;
    uint16 z0;
    uint16 z1;
    uint16 z2;
  }
}
contract P51 {
  struct S {
    uint256 p;
    uint256 v;
  }
}
contract P52 {
  struct S {
    uint w;
  }
}
contract P53 {
  uint256 bl;
}
contract P54 {
  struct S {
    uint8 x;
    uint8 z;
  }
}
contract P55 {
  struct S {
    uint256 x;
    uint
