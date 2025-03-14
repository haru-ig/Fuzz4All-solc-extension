pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1 = arrayA;
        uint[][][2] memory arrayB = arrayA;

    }
}
```

[back to the main page](./readme.md)
