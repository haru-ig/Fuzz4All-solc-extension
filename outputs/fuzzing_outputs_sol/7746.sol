pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutatingPayable1 {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public payable returns (uint256) { return value; }
    receive() external payable { oldValue = value; }
    fallback() external payable {
        value += msg.value;
    }
}
