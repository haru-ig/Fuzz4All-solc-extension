pragma solidity ^0.8.0;
contract Caller {
    function callFallback() public payable {
        Example2().__fallback();
    }
}
