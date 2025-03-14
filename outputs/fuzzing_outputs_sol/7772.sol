pragma solidity ^0.8.0;
contract OldSemanticsFallbackPayable {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    fallback() external payable { }
}
contract NewSemanticsFallbackPayable {
    uint256 internal value;
    fallback() external payable { value += msg.value; }
}
