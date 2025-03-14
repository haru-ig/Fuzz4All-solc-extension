pragma solidity ^0.8.0;
contract AccountCounterMutator {
    uint public number;
    mapping(uint => uint) public accountNumber;

    constructor(uint a) {
        number = a;
        accountNumber[number] = accountNumber[number] + 1;

    }

    function changeAccount(uint a) {
        accountNumber[a] = accountNumber[a] + 1;
        accountNumber[number] = accountNumber[number] + 1;
    }
}
