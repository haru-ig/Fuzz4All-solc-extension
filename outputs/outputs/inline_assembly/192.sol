pragma solidity ^0.8.0;
contract E6H {
  constructor() {}
  uint16 internal x = 0xabcd;
  mapping (address => int internal) map;
  function g(address x) public returns (int) {
    return map[x];
  }
  function put(address x, int y) public returns (address z) {
    z = x;
    y = y.add(1);
    map[z] = y;
  }
}

pragma solidity ^0.8.0;
contract E6H {
  uint16 internal x = 0xabcd;
  function g(address x) public returns (int) {
    return map[x];
  }
  function put(address x, int y) public returns (address z) {
    z = x;
    map[z] = y;
  }

  modifier onlyNonZero {
    if (map[x]!= 0) {
      x = x.add(1);
    } else {
      revert();
    }
  }
}

pragma solidity ^0.8.0;
contract E6H {
  uint16 x = 0xabcd;
  uint16 internal y = 0xababababcdabcdabcdabcdabcd;
  mapping (address => int internal) map;
  function g(address x) public returns (int) {
    return map[x];
  }
  function x1(address x) public returns (uint) {
    return x;
  }
  function y1(address x) public onlyNonZero returns (uint) {
    return y;
  }
}
```

Here's a solution to the first problem:

```solidity
pragma solidity ^0.8.0;

contract E6H is A {
  uint16 internal x = 0xabcd;
  constructor() {
    map[msg.sender] = 0;
  }
  function g(address x) public returns (int) {
    return map[x];
  }
  function put(address x, int y) public returns (address z) {
    z = x;
    map[z] = y;
  }
}

contract A {
  uint16 internal x = 0xabcd;
