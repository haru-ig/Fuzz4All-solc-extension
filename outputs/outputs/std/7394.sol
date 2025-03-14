pragma solidity ^0.8.0;
contract MyAccount {
    uint public number;
    uint[11] public accountNumber;
    constructor(uint a) {
    	accountNumber[0] = a;
    }
}
