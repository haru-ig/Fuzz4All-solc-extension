pragma solidity ^0.8.0;
contract Fallback {
    function receive() external payable {}
    fallback() public;
    function set(uint x) public payable {}
}
