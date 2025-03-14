pragma solidity ^0.8.0;
contract OldY2 {
    mapping(address => uint256) public balances;

    constructor() public{
        balances[address(this)] = 50;
    }

    function transfer(address receiver, uint256 amount) public override {
        uint256 balance = balances[msg.sender];
        balances[msg.sender] = balance.sub(amount);
        balances[receiver] = balance.add(amount);
    }
}
