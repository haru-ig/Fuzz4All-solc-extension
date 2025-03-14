pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalenty3 {
    fallback () external payable {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalenty2 is SemanticallyEquivalenty3, MutatedSemanticallyEquivalenty3 {
    constructor() {}
}
