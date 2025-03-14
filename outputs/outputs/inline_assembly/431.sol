pragma solidity ^0.8.0;
contract SemanticallyEquivalenceM13 {
    constructor () public {
        emit Log(msg.sender);
    }
    function emitLog() public {
        emit Log(msg.sender);
    }
    event Log(address value);
}
