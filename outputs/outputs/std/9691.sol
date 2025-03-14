pragma solidity ^0.8.0;
contract MutateBigNeg2 {
    uint x;
    uint y;
    constructor() {
        x = 0x3;
        set(uint256(-0x0));
    }
    function set(uint number) internal returns("Success.") {
        y = number;
    }
}
```

<hr>
