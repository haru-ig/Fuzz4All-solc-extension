pragma solidity ^0.8.0;
contract SemanticallyEquivalenty2 {
    constructor () public {
      emit Log2(msg.sender, "", "");
    }
    event Log2(address, string value1, string value2);
}
