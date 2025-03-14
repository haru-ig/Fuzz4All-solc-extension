pragma solidity ^0.8.0;
contract NewSemanticsFallbackMutableNonPayable {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    fallback() external {
        value += msg.value;
    }
}
