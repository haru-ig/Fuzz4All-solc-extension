pragma solidity ^0.8.0;
contract Dinero {
    uint256 public balance;
    address public payee;
    constructor(uint256 balance, address payee) {
        this.balance = balance;
        this.payee = payee;
    }
    function withdrawPayee(uint256 amount) public returns(uint256) {
        require(amount <= balance, "Dinero:Insufficient balance");
        payable(payee).transfer(amount);
    }
}
