pragma solidity ^0.8.0;
contract E62 {
  uint8[99] x = [1, 2, 3, 4, 5, 6];
  uint16 x2 = 0xabcd;
  mapping (address => int) map;
  function get(uint32 k) public returns (address z) {
    z = x[k];
    map[z] = x2 + k;
  }
  function g(address x) public returns (int) {
    return map[x];
  }
}
```

The previous problem is a consequence of the [EIP2927 standard](https:
