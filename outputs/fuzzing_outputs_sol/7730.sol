pragma solidity ^0.8.0;
contract NewSemanticsFallbackMutating {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external payable {
        oldValue = value;
        value += msg.value;
    }
}
