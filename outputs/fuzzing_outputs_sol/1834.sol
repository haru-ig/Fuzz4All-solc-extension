pragma solidity ^0.8.0;
contract Caller {
    function callContractWithFallback() public {
        FallbackCaller fallbackCaller;
        fallbackCaller.fallback();
    }
}
