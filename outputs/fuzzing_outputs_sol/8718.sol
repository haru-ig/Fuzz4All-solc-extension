pragma solidity ^0.8.0;
contract mutatedFallback {
    receive() external { }
    function receive() external payable { }
    function fallback() external {}
    fallback() external { }
}
