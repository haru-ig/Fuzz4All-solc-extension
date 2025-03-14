pragma solidity ^0.8.0;
contract Unmodified {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 0;
        a = 0xD0AF;
        b = _b;
        require(a == 0xD0AF);
        require(b == "abcde");
    }
}

```
