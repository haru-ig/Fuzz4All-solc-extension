pragma solidity ^0.8.0;
contract MutatedFallbackExample {
    address payable payee;
    receive() external payable {}
    receive() public override {
        payee.transfer(address(this).balance);
    }
    constructor() {}
}
