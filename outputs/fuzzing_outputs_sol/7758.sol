pragma solidity ^0.8.0;
contract OldSemanticsFallbackPure {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    function fallback() public pure {}
}



pragma solidity ^0.8.0;
contract OldSemanticsFallback {
    uint256 internal value;
    uint256 internal oldValue;
    fallback() public pure {
        value += 1;
    }
}
