pragma solidity ^0.8.0;
contract Reveal {
    uint256 private amount;


    constructor(uint256 _amount) {
        amount = _amount;
    }
    fallback() external payable {
        amount += msg.value;
    }
    receive() external payable {
        uint256 refund = address(this).balance;

        amount += msg.value;

        msg.sender.transfer(refund);
    }
}
