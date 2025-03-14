pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    address payable private payee;
    constructor() {
        a = a - 1;
        payee = payable(msg.sender);
    }
    function update() public {
        a = a * 10;
        a = a * 10;

        emit Deposit(payee);
    }
}
