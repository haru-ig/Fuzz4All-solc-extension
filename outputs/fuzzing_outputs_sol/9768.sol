pragma solidity ^0.8.0;
contract FallbackFunction {

    address payable public address_;
    Constructor(address payable _address) {
        address_ = _address;
    }
    receive() external payable { }
    fallback() external payable {
        address_._transfer(address_, 0);
    }
}
