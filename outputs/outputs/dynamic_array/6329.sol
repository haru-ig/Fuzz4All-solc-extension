pragma solidity ^0.8.0;
contract b {
  struct S { uint8 s; uint8 x; uint8 y; uint8 z; }
  S b;
  constructor() public {
    b.x = 1;
  }
  function get() public view { return b; }

  function set(S storage s, uint8 x, uint8 y) public {
    s.x = x;
    s.y = y;
    s.z = 2;
  }
}
contract a is b {
  mapping(uint => uint) a;
  function get() public view { return a; }
  function test() public {
    S storage s = a[0];
    s.x = b.x;
    mstore(s);
    s.x = 2;
    b.x = 1;
    uint t = s.x;
  }
}





contract a {
  function get() public view { return b; }
  function test() public {
    S storage s = a[0];
    uint[] memory arr = new uint[](3);
    arr[0] = 1;
    set(S storage s, 2, 3);
  }
}

contract a {
  function test() public {
    S storage s;
    s = get(S storage s);
    s.x = 1;
  }
}
