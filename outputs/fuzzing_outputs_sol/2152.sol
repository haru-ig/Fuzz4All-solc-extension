pragma solidity ^0.8.0;
contract Mutater332 {
    address [payable] mut payees;
    constructor(address payable payee) {
        payees[0] = payee;
    }
    function addPayee(address payable payee_) {
        payees.push(payee_);
    }
    function getPayees() public view returns (address[] memory) {
        return payees;
    }
    function fallback() {   }
}
