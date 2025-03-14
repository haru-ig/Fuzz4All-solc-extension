pragma solidity ^0.8.0;
contract MutatingFallbackMutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() payable {
        address_.transfer(msg.value);
    }
}
