pragma solidity ^0.8.0;

contract Caller {

    address payable myContract;
    uint initialBalance;
    uint totalAmount;
    uint private constant MULTIPLIER = 10;

    constructor() {
        myContract = payable(address(0x5D59A41E8b4eC8814858288A3646d802E0d8368F));
        initialBalance = myContract.balance;
        totalAmount = MULTIPLIER * 7;
        myContract.transfer(msg.value, "Ether transfer");
        assert(myContract.transfer("Ether transfer", "Ether transfer data"));
        address payable fallback = address(myContract.fallback);
        address payable callDataSender = address(0x0123456789);
        fallback.call{value: callDataSender}("");
    }

    function fallback() external payable {
        require(msg.value <= totalAmount);
        myContract.transferFrom(msg.sender, msg.sender, totalAmount / MULTIPLIER);
    }
}
