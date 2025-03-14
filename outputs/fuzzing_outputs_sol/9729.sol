pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutatedModified {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public payable {
        address_.transfer(msg.value);
    }
}
