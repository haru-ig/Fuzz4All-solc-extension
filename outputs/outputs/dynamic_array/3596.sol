pragma solidity ^0.8.0;
contract C {
    bool[] public x;
    constructor() {
        uint256[] memory a = new uint256[](1);
        a[0] = 42;
        x.push(0);
    }
}
```
