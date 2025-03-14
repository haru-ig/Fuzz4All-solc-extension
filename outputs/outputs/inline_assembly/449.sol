pragma solidity ^0.8.0;
contract SemanticallyEquivalentM26 is SemanticallyEquivalentM16 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM32 is SemanticallyEquivalentM26 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM31 is SemanticallyEquivalentM32 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
}
contract SemanticallyEquivalentM42 {
    constructor () public {

        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM41 is SemanticallyEquivalentM42 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM41 is SemanticallyEquivalentM42 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM60 {

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM600 is SemanticallyEquivalentM60 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM57 {
    constructor () public {

        SemanticallyEquivalentM61 contract, without issues - all is well.
```

## Reference

-   [Inline assembly (Solidity Docs)](https:
