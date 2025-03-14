pragma solidity ^0.8.0;
contract MutantCode {
    uint fFalse;
    constructor () public {
    }
    function g() public pure {
        fFalse = 1;
        bytes32 x;
        c();
    }
    function c() private pure {
    }
}
```
