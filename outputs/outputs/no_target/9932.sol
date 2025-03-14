pragma solidity ^0.8.0;
contract test {
  uint x;
  function f() public {
    uint160 one = 1 << (255);
    assert(uint(((uint160(1) + uint(1)) * uint(one - 1)) % uint(one)) == uint(uint160(1)));
    assert(uint(uint160(x) + uint(one)) == uint(uint160(0)));
    assert(uint(uint160(x) - uint(one)) == uint(((uint160(1) + uint(1)) * uint(uint160(1) - uint(1)) % uint160(one)) + uint160(uint8(1))));
    uint160 two = one * two / one + one;
    assert(uint(uint160(d)) + uint(two) == uint(uint160(one)));
    assert(uint(uint160(d) + two) == uint(uint160(one)));
  }
}
