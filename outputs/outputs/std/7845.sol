pragma solidity ^0.8.0;
contract Moved {
    function printMultiples2(uint8 a, uint8 b) public pure {
        uint8 s = a >= 5? b : 5;
        a *= s;
        b *= s;
        s *= a;
        b *= b;
        s *= s;
        a *= s;
        b *= s;
        a *= a;
        s *= b;
    }
}
```

---
