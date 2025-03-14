pragma solidity ^0.8.0;
contract MutatedAccount {
    uint public newNumber;
    uint number;
    uint private newAccountNumber;
    uint public immutable accountNumber;
    constructor() {
        accountNumber = 0;
    }
    modifier onlyNew() {
        require(number == newAccountNumber, "The new number is different from actual!");
        _;
    }
    function incrementNumber() public onlyNew {
        number = number + 1;
        newAccountNumber = accountNumber + 1;
    }
}
