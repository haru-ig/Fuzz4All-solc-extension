pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76SemanticallyEquivalentSolidity76{
    static address owner;
    uint internal _numberOfBytes = 30;
    constructor() public {
        owner = msg.sender;
        _numberOfBytes += 20;
    }
    modifier restricted() {
        require(msg.sender == owner, "Only the owner can call this contract");
        _;
    }
    function changeNumberOfBytes() public restricted {
        _numberOfBytes = 35;
    }
    function increaseNumberOfBytes(uint n) public restricted {
        _numberOfBytes += n;
    }
    function getCodeSize() public returns (uint) {
        return type(SemanticallyEquivalentSolidity76_dynamicArraysOfDifferentTypes).creationCode.length;
    }
    function getCalldataSize() public returns (uint) {
        return (type(SemanticallyEquivalentSolidity76_dynamicArraysOfDifferentTypes).calldatacode.length + _numberOfBytes);
    }
}
