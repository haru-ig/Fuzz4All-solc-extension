pragma solidity ^0.8.0;
contract MutatedFallback {
    function fallback() public payable {}
    function receive() public {   }
}
