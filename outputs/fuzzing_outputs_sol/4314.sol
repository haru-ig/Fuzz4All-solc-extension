pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerNonMutated {
    function f() virtual pure returns (uint256) {
        return 10;
    }
    uint internal x = 10;
    receive() external payable {
        x = f();
    }
}

```
