pragma solidity ^0.8.0;
contract NewSemanticsFallbackNonPayable {
    uint256 internal value;
    uint256 internal oldValue;
    fallback() external {
        value += msg.value;
    }
}
