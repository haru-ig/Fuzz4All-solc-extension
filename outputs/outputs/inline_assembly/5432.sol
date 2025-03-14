pragma solidity ^0.8.0;
contract MutateBc2 {
    uint _rBc2 = 18;
    function _next() public {
        uint x = 1;
        while (x < 20000) {
          _rBc2 += x;
          x++;
        }
    }
}
```
