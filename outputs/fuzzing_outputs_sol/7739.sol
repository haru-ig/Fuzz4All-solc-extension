pragma solidity ^0.8.0;
contract NewSemanticsFallbackNonPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public pure returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external returns (uint256) {
        oldValue = value;
        value += msg.value;
        return msg.value;
    }
}
