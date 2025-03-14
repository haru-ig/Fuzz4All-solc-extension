pragma solidity ^0.8.0;
contract Mutated {
    struct ConfigStorage {
        uint numCalls;
        uint numFallbacks;
    }
    ConfigStorage public configStorage;
    function init() public {
        configStorage.numCalls = 0;
        configStorage.numFallbacks = 0;
    }
    function incrementCallsAndFallbacks() public {
        configStorage.numCalls++;
        configStorage.numFallbacks++;
    }
    function reset() public {
        configStorage.numCalls = 0;
        configStorage.numFallbacks = 0;
    }
}
