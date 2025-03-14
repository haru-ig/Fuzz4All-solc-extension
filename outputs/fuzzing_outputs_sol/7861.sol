pragma solidity ^0.8.0;
contract EquivalentFallbackExample3 {
    receive() external {
        storage.foo();
    }
}
