pragma solidity ^0.8.0;
contract OldSemanticsFallbackNonPayable {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    fallback() external nonpayable { }
}
contract NewSemanticsFallbackNonPayable {
    uint256 internal value;
    fallback() external nonpayable { value += msg.value; }
}
