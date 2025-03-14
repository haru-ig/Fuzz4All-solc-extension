pragma solidity ^0.8.0;
contract SemanticallyEquivalenty4 {
    fallback() external payable {
        address payable sender = msg.sender;
        emit Log((sender), "", "");
    }
    event Log(address value1, string value2, string value3);
}
