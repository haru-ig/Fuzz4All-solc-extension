pragma solidity ^0.8.0;
contract Caller {
    function Fallback() public {
        emit FallbackLog();
    }

    struct State {
        uint64 x;
    }

    event FallbackLog(State s);
}
