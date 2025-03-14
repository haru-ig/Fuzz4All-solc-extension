pragma solidity ^0.8.0;
contract Mutater334a {
    address payeable public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    payable fallback() public payable {}
}
