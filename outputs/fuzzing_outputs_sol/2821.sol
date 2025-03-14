pragma solidity ^0.8.0;
contract Fallback {
    Caller2 callContract;
    constructor(Caller2 _callContract) {
        callContract = _callContract;
    }
    receive() external payable {}
}
