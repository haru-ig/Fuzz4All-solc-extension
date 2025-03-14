pragma solidity ^0.8.0;
contract Mutated3 {
    address payable address_;
    constructor(address payable _address) {
        address_ = payable(_address);
    }
    receive() external payable { }
}
