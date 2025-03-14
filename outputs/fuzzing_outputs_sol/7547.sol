pragma solidity ^0.8.0;
contract UntouchedFallbackModifier {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    modifier onlyFallback() {
        storedNumber = 17;
        _;
        storedNumber = 18;
    }
    fallback() external payable onlyFallback {
        storedNumber = 19;
    }
}

pragma solidity ^0.8.0;
contract NoMethodFallbackModifier {
    fallback() external {
        revert();
    }
}
