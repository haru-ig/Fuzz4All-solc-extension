pragma solidity ^0.8.0;
contract C {
    event Transfer(address indexed from, address indexed to, uint value);
    address[] public account;
    constructor() {
        account.push(msg.sender);
    }
    modifier onlyContract {
        require(msg.sender == address(this));
        _;
    }
    function transfer(address receiver, uint amount) public onlyContract {
        balances[msg.sender][amount] = receiver;
        emit Transfer(msg.sender, receiver, amount);
    }
}
