pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalenty4 {
    fallback() external payable {
        emit Log0((msg.sender));
        emit Log1((msg.sender), "1");
        emit Log((msg.sender), "", "2");
    }
    event Log0(address value1);
    event Log1(address value1, string value2);
    event Log(address value1, string value2, string value3);
}
