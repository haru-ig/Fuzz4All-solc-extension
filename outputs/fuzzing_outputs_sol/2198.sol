pragma solidity ^0.8.0;
contract Mutator432 {
    address payable public payee;
    uint private count;
    modifier onlyCaller {
        require(msg.sender == caller);
        _;
    }
    constructor(
        address payable _payee
    ) {
        payee = _payee;
    }
    fallback() external onlyCaller {
        count;
        payee;
        caller;
    }
    receive() payable external onlyCaller {
        count;
        payee;
        caller;
    }
}
