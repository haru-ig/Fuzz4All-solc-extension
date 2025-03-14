pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {
    address address_;
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public {
        address_.transfer(msg.value);
    }
}
