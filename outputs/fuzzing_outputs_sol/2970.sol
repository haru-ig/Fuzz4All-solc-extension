pragma solidity ^0.8.0;
contract LowLevelCallHelper {
    receive() external pure {
    }
}
contract Caller {
    fallbackReceivable internal _receiver;

    FallbackReceivable public receiveFunction() external{
        _receiver.fallback();
    }
}
