pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutatingReturn {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
}
contract NewSemanticsFallbackMutatingReceive {
    uint256 internal value;
    uint256 internal oldValue;
    function set(uint256 _v) internal { value = _v; }
    receive() external payable {
        if (msg.value > 2 ether) revert();
        value -= msg.value;
    }
}
