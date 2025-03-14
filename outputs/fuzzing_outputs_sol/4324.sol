pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerNoModifier {
    uint internal x = 12;
    fallback() external {
        x = 34;
    }
}
contract MutatedSimpleFallbackCallerNoModifier {
    uint internal x = 12;
    receive() external payable {
        x = 45;
    }
}
contract MutatedSimpleFallbackCallerModifierModifierInCallNoModifier {
    uint internal x;
    constructor(uint n) {
        x = n;
    }
    modifier internalModifier {
        x = 8;
        _;
        x = 3;
    }
    receive() external {
        _ = true;
    }
}
contract MutatedSimpleFallbackCallerModifierModifierInCallNoModifier {
    uint internal x = 12;
    function testContract() public {
        revert();
    }
    modifier internalModifier {
        x = 5;
        _;
        x = 3;
    }
    receive() external {
        if (true)
            _ = false;
    }
}
