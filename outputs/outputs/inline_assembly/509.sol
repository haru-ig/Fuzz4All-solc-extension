pragma solidity ^0.8.0;
contract SemanticallyEquivalenty5 is SemanticallyEquivalenty4 {
    fallback() external payable {
        address xAddress1 = msg.sender;
        address xAddress2 = msg.sender;
        emit Log(xAddress1, "a", "");
        emit Log(xAddress2, "b", "");
    }
    event Log(address value1, string value2, string value3);
}
