pragma solidity ^0.8.0;
contract SemanticallyEquivalenty4 {
    fallback() external payable {
        emit Log((address(this)), (msg.data), "");
    }
    event Log(address value1, bytes32 value2, string value3);
}
