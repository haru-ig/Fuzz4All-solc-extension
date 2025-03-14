pragma solidity ^0.8.0;
contract NewSemanticsFallbackMod {
    uint256 internal value;
    uint256 internal prevValue;
    function set(uint256 _v) internal {
        value = _v;
        prevValue = value;
    }
    fallback() external {
        value += msg.value;
    }
}
