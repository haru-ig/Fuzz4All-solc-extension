pragma solidity ^0.8.0;
contract NoStorageFallbackModifier {
    fallback() external {
        memoryStorage;
    }
}
