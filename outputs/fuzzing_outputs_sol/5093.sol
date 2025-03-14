pragma solidity ^0.8.0;
contract Caller {
    constructor() payable {}
    fallback() payable returns (uint gasAmount) {
        gasAmount = msg.value;
        return;
    }
}
