pragma solidity ^0.8.0;
contract OldSemanticsFallbackReceive {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    receive() external payable { value += msg.value; }
}
contract NewSemanticsFallbackReceive {
    uint256 internal value;
    receive() external payable { value += msg.value; }
}
