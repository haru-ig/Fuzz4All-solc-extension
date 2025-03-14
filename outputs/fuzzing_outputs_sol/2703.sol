pragma solidity ^0.8.0;
contract Fallback {
    function receive() external payable { revert("Fallback not called"); }
    function set(uint x) public payable { revert("Fallback not called"); }
}
