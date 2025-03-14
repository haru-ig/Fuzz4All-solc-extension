pragma solidity ^0.8.0;
contract MutateBc52 {
    function _next() public {
        uint _rBc5;
        for (uint x; x < 20000; x++) {
          if (_rBc5 < 20000 / 4) {
            _rBc5 += x;
          } else {
            break;
          }
        }
    }
}
```

## References ##

- https:
