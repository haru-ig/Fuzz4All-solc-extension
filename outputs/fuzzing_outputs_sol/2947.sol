pragma solidity ^0.8.0;
contract FallbackFunction {
    event Fallback();
    function fallback() external pure {
        this.fallback();
    }
}
contract MutatedFallback {
    function pay_fallback() public pure {}
    function mut_fallback() public {}
    fallback() public pure {
        this.fallback();
    }
}
