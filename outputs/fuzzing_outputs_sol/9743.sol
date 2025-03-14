pragma solidity ^0.8.0;
contract CallerMutating {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() external payable {
        emit FallbackReceivedMutated(address_);
    }
    function change() external payable {
        emit FallbackReceivedWithoutMutating(address_);
    }
    fallback() external payable {}
    receive() external payable {
        emit FallbackReceivedWithoutMutating(address_);
    }
    function change() external payable {
        emit FallbackReceivedWithoutMutating(address_);
    }
    event FallbackReceivedWithoutMutating(address);
}
