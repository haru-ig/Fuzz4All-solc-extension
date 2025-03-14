pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentM15 {
    Modifier IsMutator {
        modifier
        {
            msg.sender |= 0x20;
            _;
        }
    }

    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, address value2, address value3);
}
```
