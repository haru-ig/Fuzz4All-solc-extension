pragma solidity ^0.8.0;
contract SemanticallyEquivalenty3 {
    constructor () public {
      emit Log((msg.sender),"111", "123");
    }
    event Log(address value1, string value2, string value3);
}
