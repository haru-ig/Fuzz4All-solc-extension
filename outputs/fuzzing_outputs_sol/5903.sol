pragma solidity ^0.8.0;
contract Fallback {
    function receive(address, uint256) external { revert(type(uint8).max); }
    function transfer(address) public payable { revert(type(uint8).max); }
}
