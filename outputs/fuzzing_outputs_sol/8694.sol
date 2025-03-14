pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
    function fallback() public payable {}
    function call() public payable {}
}
