pragma solidity ^0.8.0;

contract SemanticallyEquivalenty2 is SemanticallyEquivalenty1{
    constructor () public SemanticallyEquivalenty2Storage {
        emit Log("");
    }
    event Log(string value);
}
