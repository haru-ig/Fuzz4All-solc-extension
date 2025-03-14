pragma solidity ^0.8.0;
contract Caller {
    function callFallback() public returns (bool) {
        fallback();
        return false;
    }
    function receive() public payable {}
}
