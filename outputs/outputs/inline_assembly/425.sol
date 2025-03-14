pragma solidity ^0.8.0;
contract SemanticallyEquivalentM12 {
    constructor () public {}
    function emitLog() public { emit Log(msg.sender); }
    function Log(address value) public {}
}
