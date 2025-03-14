pragma solidity ^0.8.0;
contract Removal {
    uint256 [8] public a;
    string [8] public b;
    uint256 public c = 30;
    constructor(string memory _b) public {
        a = [
            c,
            c / 8,
            c / 8,
            c / 8,
            c / 8,
            c / 8,
            c
        ];
        b = [_b];
    }
}
```
