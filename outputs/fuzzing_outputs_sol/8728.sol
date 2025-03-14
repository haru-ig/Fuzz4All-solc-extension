pragma solidity ^0.8.0;

contract Caller {
    receive() external payable {}
    function receive() public payable { }
    function fallback() public payable callAnother() {}
    function callAnother() public payable { }
}
