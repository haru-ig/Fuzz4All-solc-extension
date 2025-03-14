pragma solidity ^0.8.0;
contract P2 {
    uint32 public iv;
    constructor(uint32 _iv) public {
        (uint8 f,,) = abi.encode(this, _iv);
        iv = uint32(f);
    }
}
```
