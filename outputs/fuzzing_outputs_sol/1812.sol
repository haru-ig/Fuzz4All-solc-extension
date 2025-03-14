pragma solidity ^0.8.0;
 contract Fallback {
    function fallback() public {}
    function callFallback(uint n) public {

        callFallback();
    }
}
