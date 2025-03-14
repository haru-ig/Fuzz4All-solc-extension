pragma solidity ^0.8.0;
contract SemanticallyEquivalenty20 {
    constructor () public {
        emit Log(msg.sender,"", "");
    }
    event Log(address value1, string value2, string value3);
}
