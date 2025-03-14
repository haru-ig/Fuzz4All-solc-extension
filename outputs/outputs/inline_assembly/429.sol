pragma solidity ^0.8.0;
contract SemanticallyEquivalentM13 {
    constructor () public {
        emit Log(msg.sender);
    }
    event Log(address value);
}
