pragma solidity ^0.8.0;
contract Counter {
    uint private _i;
    event Incremented (uint _i);
    constructor() {
        _i = 0;
    }
    function increment() public { _i++; emit Incremented(_i); }
}
```
## 2.1.2 The EVM’s internal storage is very fast to modify #  #

To modify the code in EVM, you should also familiarise yourself with the structure of it by reading the EVM’s code.
