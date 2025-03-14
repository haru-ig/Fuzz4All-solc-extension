pragma solidity ^0.8.0;
contract MutableCaller5 is Caller5 {
    address myAddress;
    constructor(address _address) {
        myAddress = _address;
    }
}
