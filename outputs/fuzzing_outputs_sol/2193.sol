pragma solidity ^0.8.0;
contract Mutater431 {
    address payable public payee;
    uint private count;
    address payable public caller;

    modifier onlyCaller {
        require(msg.sender == caller);
        _;
    }
    constructor(
        address payable _payee,
        address payable _caller
    ) {
        payee = _payee;
        caller = _caller;
    }
    fallback() external payable {
        count;
        payee;
        caller;
    }
    receive() payable external {
        count;
        payee;
        caller;
    }
}
