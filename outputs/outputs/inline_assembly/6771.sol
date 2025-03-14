pragma solidity ^0.8.0;
contract MixedContractsExample508 {
    event ELog(uint128 num);
    mapping(address => bool) private isMyself;
    mapping(address => uint128) private balances;
    function anotherOperation5(address user) external {
        if (isMyself[user]) {
            uint128 test;
            test = balances[user];
            balances[user] = 1;
            test = balances[user];
            emit ELog(1);
        }
        isMyself[user] = false;
        emit ELog(1);
    }
