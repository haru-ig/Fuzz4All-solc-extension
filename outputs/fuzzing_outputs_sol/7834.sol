pragma solidity ^0.8.0;
contract Caller {
    address payable payee;
    fallback(uint) external payable {
            payee.transfer(msg.value);
    }
    constructor() {}
}
