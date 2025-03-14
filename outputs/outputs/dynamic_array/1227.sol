pragma solidity ^0.8.0;
contract MutatedArrayInitializer {
    uint[10] c;

    ArrayInitializer initializer;

    function initialize() public {
        initializer.initialize();
        initializer.initialize();
        initializer.initialize();
    }
}
