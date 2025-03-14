pragma solidity ^0.8.0;
contract Example5 {
    address address_;
    bool a;
    constructor (address _address) {
        address_ = _address;
    }
    function setAddress(address _address) {
        a = true;
        address_ = _address;
        a = false;
    }
    modifier isA() {
        require(a, "not A");
        _;
    }
    function sendEtherToAddress() isA payable {
    }
}
