pragma solidity ^0.8.0;
library Caller {
    event CalledWithEther(address from);
    uint public amount;
    constructor() {
        amount = msg.value;
    }
    fallback() external payable {
        CalledWithEther(msg.sender);
    }
}
