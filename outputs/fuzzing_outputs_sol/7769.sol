pragma solidity ^0.8.0;
contract OldSemanticsFallbackNonPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    fallback() external returns (uint256) { return value; }
}
contract NewSemanticsFallbackNonPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external returns (uint256) {
        value += msg.value;
        return value;
    }
}
