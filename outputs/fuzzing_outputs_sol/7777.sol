pragma solidity ^0.8.0;
contract OldSemanticsFallback {
    uint256 internal value;
    fallback() external { value += msg.data.length; }
}
contract NewSemanticsFallback {
    uint256 internal value;
    fallback() external { value += msg.data.length; }
}
