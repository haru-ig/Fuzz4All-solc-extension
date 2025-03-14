pragma solidity ^0.8.0;
contract CallerFallbackMutated {
    modifier FallbackOnly() { require(msg.value!= 0); _; }

    function () public payable FallbackOnly {require(true); }
}
