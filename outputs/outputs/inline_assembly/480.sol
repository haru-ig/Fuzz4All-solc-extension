pragma solidity ^0.8.0;
contract SemanticallyEquivalenty5 {
    constructor () public {
        emit emitLog((msg.sender), "");
    }
    event Log(address value1, string value2, string value3);
    function emitLog(address value1, string memory value2, string memory value3) public {
    }
}
