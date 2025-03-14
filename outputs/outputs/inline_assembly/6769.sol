pragma solidity ^0.8.0;
contract MixedContactsExample507 {
    event ELog(uint newnum);
    function anotherOperation5() public {
        emit ELog(1);
        uint8 test;
        test = 0;
        test = 2;
    }
}
```
