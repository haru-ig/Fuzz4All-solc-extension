pragma solidity ^0.8.0;
contract SemanticallyNotEquivalenceM21 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    function emitLogFunction() public view {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
