pragma solidity ^0.8.0;
contract Incrementer {
    function increment() public pure {
        uint16 i = 1;
        assembly{
            i := i + 1
        }
    }
}
```
