pragma solidity ^0.8.0;
contract YulContract {
    uint count = 0;
    function addContract() internal returns (uint) {
        count += 1;
        return count;
    }
}
```
