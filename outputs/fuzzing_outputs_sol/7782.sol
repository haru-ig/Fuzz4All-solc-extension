pragma solidity ^0.8.0;
contract NewSemanticsFallback {
    uint256 internal value;
    fallback() external { value += msg.data.length; _; }
}
