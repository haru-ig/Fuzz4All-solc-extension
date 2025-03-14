pragma solidity ^0.8.0;

contract Previous {
    mapping (address => uint256) userToBalance;
    uint256 balance;

    constructor(uint256 _amount) {
        balance = _amount;
    }

    function getBalance() public view returns(uint){
        return balance;
    }
}
