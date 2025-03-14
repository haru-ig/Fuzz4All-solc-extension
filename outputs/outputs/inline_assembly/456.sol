pragma solidity ^0.8.0;
contract SemanticallyEquivalentM21 {
    constructor () public {
        emit Log(msg.value);
    }
    event Log(uint256 value);
}
