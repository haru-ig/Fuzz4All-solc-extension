pragma solidity ^0.8.0;
contract Mutate6 {
    struct MyClass {
        address payable public _address;
        uint public _amount;
    }
    address payable public _address;
    uint public _amount;
    constructor(uint amt6) {
        MyClass storage mem6 = MyClass(payable(msg.sender));
        _address = payable(msg.sender);
        _amount = amt6;
    }
}
