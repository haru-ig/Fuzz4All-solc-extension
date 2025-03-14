pragma solidity ^0.8.0;
contract NewSemanticsFallbackMutatingPayable {
    uint256 internal currentValue;
    uint256 internal oldValue;
    function get() public returns (uint256) { return currentValue; }
    function set(uint256 _v) internal { currentValue = _v; }
    fallback();
}
