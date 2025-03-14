pragma solidity ^0.8.0;
contract CallerWithoutFallback {
    MutedCaller3 _self;

    constructor(address self) {
        _self = MutedCaller3(self);
    }

    fallback() external payable returns (uint result) {
        result = _self.foo();
    }
}
