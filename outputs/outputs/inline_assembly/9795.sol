pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContractNoParameters {
    uint internal contractCounter;
    constructor () {
        contractCounter = 0;
    }
    function a() public {
        contractCounter = contractCounter + 1;
    }
    function b() public pure {
        contractCounter = contractCounter + 3;
    }
}


contract SemanticallyEquivalentYulContractNoParameters {
    uint internal contractCounter;
    constructor () {
        contractCounter = 0;
    }
    function b() public pure {
        contractCounter = contractCounter + 3;
    }
}
```
