pragma solidity ^0.8.0;

contract CallerMutatingFallbackModified {
    address payable address_;
    modifier callerPayable {
        require(msg.value > address_.balance, "address does not have enough Ether");
        _;
    }
    constructor(address payable _address) {
        address_ = _address;
    }
    function pay() {
        payable(address_).transfer(msg.value);
    }
}
