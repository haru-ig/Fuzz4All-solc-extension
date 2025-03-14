pragma solidity ^0.8.0;
contract TestFallback1
{
    address public owner;
    address public addressOne;
    mapping(address => uint) accounts;
    mapping(address => uint) public payableAccounts;
    constructor()
    {
        owner = msg.sender;
        addressOne = address(uint(0));
        accounts[addressOne] = 10000;
        accounts[msg.sender] = 10000;
    }
    function sendCall() public
    {
        uint amount = 10;
        require(msg.value >= amount, "Need to send more than 10000.00 tokens.");
        payableAccounts[msg.sender] += amount;
    }
    function sendTransfer() public
    {
        uint amount = 10;
        msg.sender.transfer(amount);
        require(payableAccounts[msg.sender] >= amount, "Need to send more than 10000.00 tokens.");
    }
    function sendModifyTransfer() public
    {
        uint amount = 10;
        payableAccounts[msg.sender] -= amount;
        msg.sender.transfer(amount);
        payableAccounts[msg.sender] += amount;
        require(payableAccounts[msg.sender] >= amount, "Need to send more than 10000.00 tokens.");
    }
    function sendModifyCall() public
    {
        uint amount = 10;
        require(msg.value >= amount, "Need to send more than 10000.00 tokens.");
        payableAccounts[msg.sender] -= amount;
        (bool returned, ) = msg.sender.call.value(amount)("");
        require(returned, "Failed to call contract!");
        payableAccounts[msg.sender] += amount;
        require(payableAccounts[msg.sender] >= amount, "Need to send more than 10000.00 tokens.");
    }
}
