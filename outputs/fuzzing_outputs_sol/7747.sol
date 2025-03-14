pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutatingPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    fallback() external payable {
        value += msg.value;
    }
}
