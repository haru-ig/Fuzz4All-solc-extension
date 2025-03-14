pragma solidity ^0.8.0;
contract Fallback {
    enum States {Fallback, Caller, LowLevelCaller, LowLevelCallerAndReceive, LowLevelCallerAndFallback}
    States state;
    bytes32 public msgHash;
    emit FallbackStateChanged(state);
    modifier onlyFallback() {
        require(state == States.Fallback || msg.data.length == 0);

        state = States.Fallback;
        _;
    }
    modifier onlyCaller() {
        require(state == States.Caller || msg.data.length == 0);
        state = States.Caller;
        _;
    }
    modifier onlyLowLevelCaller() {
        require(state == States.Caller || state == States.LowLevelCallerAndReceive || msg.data.length == 0);
        state = States.LowLevelCaller;
        _;
    }
    modifier onlyLowLevelCallerAndReceive() {
        require(state == States.Caller || state == States.LowLevelCallerAndFallback || msg.data.length == 0);
        state = States.LowLevelCallerAndReceive;
        _;
    }
    modifier onlyLowLevelCallerAndFallback() {
        require(state == States.Caller || state == States.LowLevelCaller || msg.data.length == 0);
        state = States.LowLevelCallerAndFallback;
        _;
    }
}
