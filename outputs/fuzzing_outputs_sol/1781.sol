pragma solidity ^0.8.0;
contract CallerNoFallback {
    fallback () external;
    function sendAndReturn() external {
    }
}
