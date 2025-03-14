pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    constructor() {
      _incrementNumber();
      _incrementNumber();
      _incrementNumber();
    }
    function _incrementNumber() internal {
    }
}
```

```
Error[TYPE_CHECK_FAILED]: 4250e:13:7: Function 'incrementNumber' has type mismatch. Expected '() -> uint8' but instead returned type 'uint8'.
```

## Resources

- [Understanding Solidity's function calling conventions](https:
