pragma solidity ^0.8.0;
contract mutatedCaller2 {
    receive() external payable { }
    function receive() public payable { }
    function fallback() public pure { }
    fallback() external payable { }
}
