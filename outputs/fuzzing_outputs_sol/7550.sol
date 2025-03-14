pragma solidity ^0.8.0;
contract UntouchedFallbackStorageModifier {
    uint256 constant INITIAL_VALUE = 23;
    mapping(address => uint256) storedValues;
    modifier onlyFallback() {
        storedValues[msg.sender] = 17;
        _;
        storedValues[msg.sender] = 18;
    }
    fallback() external payable onlyFallback {
        storedValues[msg.sender] = 19;
    }
}
contract NoMethodFallbackStorageModifier {
    mapping(address => uint256) storedValues;
    fallback() external payable {
        storedValues[msg.sender] = 17;
    }
}
