pragma solidity ^0.8.0;
contract MutatedCaller {
    constructor(address _fallback) {
        setFallback(_fallback);
    }
    function setFallback(address _fallback) public { _fallback; }
}
