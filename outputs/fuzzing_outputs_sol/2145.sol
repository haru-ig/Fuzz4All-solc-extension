pragma solidity ^0.8.0;
contract Mutater332 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    function getPayee() public view returns (address) {
        return payee;
    }
}
