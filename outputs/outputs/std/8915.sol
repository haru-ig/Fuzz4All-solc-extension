pragma solidity ^0.8.0;
contract ExampleStruct10 {
    mapping(address => uint) private storage;
    uint x;
    constructor() {
        storage[msg.sender] = 10;
        x = 10;
    }
    function() external payable {
        emit Log(x, add(x, storage[msg.sender]));
    }
}
