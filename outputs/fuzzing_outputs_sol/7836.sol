pragma solidity ^0.8.0;
contract ComplexCaller {
    address payable payee;
    receive() external payable {
        emit ValueSent(address(this).balance);
    }
    constructor() {}
}
