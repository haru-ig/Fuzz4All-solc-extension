pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutatingNotPayable {
    uint256 internal value;
    uint256 internal oldValue;
    uint256 internal oldOldValue;

    function set(uint256 _v) internal { value = _v; }
    function get() public returns (uint256) { return value; }
}
