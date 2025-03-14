pragma solidity ^0.8.0;
contract mutatedCaller3 {
    receive() external payable { }
    function receive() public payable { }
    function fallback() public pure { }
}
