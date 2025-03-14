pragma solidity ^0.8.0;
contract FallbackFunction {
    fallback() external {
        Storage.call();
    }
}
