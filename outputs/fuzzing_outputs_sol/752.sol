pragma solidity ^0.8.0;

address payable person;

address person;

uint256 initialBalance = 100000000;

uint256 internal tokensTransfered;

uint256 internal etherTransferred;
contract MutatedContracts {
    constructor(address payable _receiver) {
        person = _receiver;
    }
    receive() external payable {
        address oldOwner = person;
        person = msg.sender;
        oldOwner.transfer(address(this).balance);
        tokensTransfered = 0;
        etherTransferred = 0;
    }
    function transfer(uint256 _value) external {
        person.transfer(_value);
    }
    function withdrawEther() public returns (uint256) {
        uint256 balance = address(this).balance;
        person.call.value(balance)("");
        return balance;
    }
    function deposit() public payable returns(address) {
        person.transfer(address(this).balance);
        return address(this);
    }
    function callToPerson(IReceiverWithFallback receiver) public payable {
        receiver.receiveMessage(0);
    }
    function mutatedCallToPerson(address payable person, IReceiverWithFallback receiver) public payable {
        receiver.receiveMessage(0);
    }
    function mutateAndCall() external returns (uint256) {
        uint256 amount = initialBalance*15;
        tokensTransfered += amount;
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(amount);
        person.transfer(address(this).balance);
        return address(this).balance;
    }
    function contractTransfers() public returns(uint256) {
        return tokensTransfered + etherTransferred;
    }
}
contract FallbackCaller is ReceiverWithFallback {
    constructor() {
        callToPerson(this);
    }
    function receiveMessage(uint256 _value) external payable {
        callToPerson(this);
    }
    function callToPerson(IReceiverWithFallback receiver) public payable {
        receiver.receiveMessage(0);
