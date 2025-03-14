pragma solidity ^0.8.0;
contract LogWithoutEmit {
    constructor () public {
        require(msg.sender == address(0), "Caller should not be zero!");
        emit Log();
        emit Log();
    }
    event Log();
}
