pragma solidity ^0.8.0;
contract SimpleFallbackContract {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() payable {
        emit ( "Simple fallback function has been executed." );
    }
}
