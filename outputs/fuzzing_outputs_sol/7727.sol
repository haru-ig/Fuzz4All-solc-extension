pragma solidity ^0.8.0;
contract NewSemanticsFallback {
    uint256 public value;
    function get() public returns (uint256) { return value; }
    receive() external payable {}
    function set(uint256 _v) public { value = _v; }
}
