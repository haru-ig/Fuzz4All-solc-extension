pragma solidity ^0.8.0;
contract CallerMutatingFallbackFallback {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public payable {
        if (address(this).balance < msg.value) {
            throw;
        }
        address_.transfer(msg.value);
    }
}
