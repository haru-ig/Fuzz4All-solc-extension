pragma solidity ^0.8.0;
contract OldSemanticsFallbackNonpayable {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    fallback() public { }
}
contract NewSemanticsFallbackNonpayable {
    uint256 internal value;
    fallback() public { value += msg.value; }
}
