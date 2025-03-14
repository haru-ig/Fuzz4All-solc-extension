pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModifier {
    uint internal x;

    constructor() {
        x = 12;
    }

    receive() external payable {
        x = 14;
    }
}
contract MutatedSimpleFallbackCallerWithoutModifier {
    uint internal x;

    constructor() {
        x = 12;
    }

    receive() external payable {}
}
contract MutatedSimpleFallbackCallerWithoutModifierUsingStorage {
    uint internal x;

    constructor() {
        x = 12;
    }

    receive() external payable {
        storage.x += 1;
    }
}
