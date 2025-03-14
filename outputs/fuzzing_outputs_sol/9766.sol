pragma solidity ^0.8.0;
contract MutatedFallbackFunction {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function mutated() mutative external payable { }
}
