pragma solidity ^0.8.0;
contract Fallback {
    function highLevel() public payable {
        this.highLevel();
    }
    fallback () external payable {
        this.highLevel();
    }
}
contract A {
    address owner;
    address payable fallbackSender;
    uint256 public balance;
    constructor () {
        owner = msg.sender;
        if (msg.value!= 0) {
            fallbackSender = payable (msg.sender);
        }
    }
    modifier restricted() {
        require(owner == msg.sender);
        _;
    }
}
