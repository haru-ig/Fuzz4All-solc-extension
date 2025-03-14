pragma solidity ^0.8.0;
contract FallbackCaller{
    function receive() public pure {}
    function fallback() public payable {}
}
