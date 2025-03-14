pragma solidity ^0.8.0;
contract MutateWipe {
    uint r;
    constructor() {
      r = 6;
    }
    function _next() public {
      uint _r = r;
      for (uint x; x < 20000; x++) {
        if (_r > 500) {
          break;
        } else {
          _r += 32;
        }
      }
    }
}
```

# Reference

- The official reference for inline assembly is at <https:
- The Solidity development process is at the [Zora Developers](https:
