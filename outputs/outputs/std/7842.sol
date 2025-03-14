pragma solidity ^0.8.0;
contract Escrow {
    uint256 amount;
    address payable payees;
    constructor(uint256 _amount, address payable _payees) {
        amount = _amount;
        payees = _payees;
    }

    receive() payable {
        uint256 amountSent = receiveAmount;
        amount -= amountSent;
        uint256 amountReceived = amount;
        (bool success, ) = payees.call{value: amountReceived}("");
        require(success, "could not send Ether.");
    }

    function receiveAmount() public payable {
    }
}
