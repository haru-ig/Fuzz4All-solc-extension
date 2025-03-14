pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() external payable {
        require(msg.value == 2*address_.balance, "CallerFallback");
        address_.transfer(address_.balance);
    }
}
