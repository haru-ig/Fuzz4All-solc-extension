pragma solidity ^0.8.0;
contract NewSemanticsFallback {
    uint256 internal value;
    string public data;
    fallback() external { data = msg.data; }
}
