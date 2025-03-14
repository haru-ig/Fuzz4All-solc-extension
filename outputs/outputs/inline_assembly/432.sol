pragma solidity ^0.8.0;
contract SemanticallyEquivalentM14Sol {
    bytes32 constant constantString = "\xDD";


    constructor () public {
        emit Log(constantString);
    }
    event Log(bytes32 value);
}
