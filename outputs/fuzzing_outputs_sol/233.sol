pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() payable
    {
        assembly {
            sstore(add(0, 0), 1)
        }
    }
}

```
---

> ☝️ [Source Code](https:
