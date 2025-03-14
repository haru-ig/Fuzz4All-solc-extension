pragma solidity ^0.8.0;
contract Caller {
    uint balance;
    constructor() public {
        balance = 0;
    }
    fallback() receive {
        balance += msg.value;
    }
}
