pragma solidity ^0.8.0;
 contract OldSemanticsFallbackNoReceive {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    fallback() external { }
}
contract NewSemanticsFallbackNoReceive {
    uint256 internal value;
    receive() external returns (uint256) { value = msg.value; return value; }
}
