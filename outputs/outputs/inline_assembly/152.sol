pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0xc000;
  function g() public {
    x = x >> 32;
  }
}
pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0;
  uint16 y = 0;
  mapping(uint8 => address) testMap;
  function f() public {
    assert(testMap[0] == address(9));
    x = x + x;
    assert(x == uint16(16000));
  }
  function g() public {
    y = y - y;
    testMap[0] = address(9);
  }
}
pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 18446744073709551616;
  function f() public {
    x = x - x;
    assert(x == uint16(0));
    uint16 y = 56784;
    uint16 z = 24372;
    y = y + y + y + y + y + y + y;
    assert(y == 145632);
    assert(z == 250019);
  }
}

contract E6G {
  uint16 x = 0xc000;
  function f() public {
    x = x << 32;
  }
}
contract E6G {
  uint16 x = 18446744073709551616;
  function f() public {
    x = x - x;
  }
}
contract E6G {
  uint16 x = 0xc000;
  uint16 y = 18446744073709551616;
  function f() public {
    x = x << 32;
    y = y - y;
  }
}
