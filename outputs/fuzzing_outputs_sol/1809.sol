pragma solidity ^0.8.0;
contract Caller {
    receive () public payable {}
    function callFallback() public payable {}
}
