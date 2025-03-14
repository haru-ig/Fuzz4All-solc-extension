pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    constructor() {
        x = 1;
    }
    function simpleContract() public payable {
        x += 2;
    }
    fallback function receive() payable {
        x += 5;
    }
    function highLevel() public {
        x += 6;
    }
}
