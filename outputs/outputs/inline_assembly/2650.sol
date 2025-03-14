pragma solidity ^0.8.0;
contract E {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function foo() public {
        x = z * (x + ky) / 10;
        w = x * w / 10;
    }
}
```
