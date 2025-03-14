pragma solidity ^0.8.0;
contract MixedContactsExample507{
    uint8 public immutable test;
    function anotherOperation() external{
        test = 0xff;
    }
}
address payable owner;
contract GasExample102 {
    constructor() {}
    function anotherOperation(bool input) public payable {
        owner.transfer(input);
    }
}
