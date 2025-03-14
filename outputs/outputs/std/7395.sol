pragma solidity ^0.8.0;
contract MyAccount {
    uint public number;
    uint[11] public accountNumber;

    uint[] public accountNumber1;
    constructor(uint a) {
    	accountNumber[0] = a;
    	accountNumber1[99] = accountNumber[9];
    }
    function set(uint p) {
    	accountNumber[0] = p;
    }
}
