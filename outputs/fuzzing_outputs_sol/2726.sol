pragma solidity ^0.8.0;
contract Caller {
    function fallback() public payable {}
    function payableFallback() public payable {}
    receive() public payable {}
}
