pragma solidity ^0.8.0;
contract CallerMutatingFallback {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() public payable {}
    receive() public payable {}
}
