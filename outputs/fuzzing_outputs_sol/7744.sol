pragma solidity ^0.8.0;
contract NewSemanticsFallbackPayable {
    uint256 internal value;
    uint256 internal oldValue;
    receive() external { value += msg.value; }
    fallback() external payable {
        value += msg.value;
    }
}
