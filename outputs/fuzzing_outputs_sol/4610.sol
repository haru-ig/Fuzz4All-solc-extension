pragma solidity ^0.8.0;
contract ContractWithFallbackModifier {
    bool shouldFallback;
    address fallbackAddress;
    modifier MyContract {
        shouldFallback = true;
        fallbackAddress = msg.sender;
        _;
    }

    fallback() external pure {
        assert(shouldFallback);
    }
}
