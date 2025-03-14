pragma solidity ^0.8.0;
contract MutatedExampleClass {
    uint[] arr;
    mapping(address => bool) public isMember;
    constructor(uint[] memory data) {
        arr = data;
    }
    function addMember(address addr) public {
        isMember[addr] = true;
    }
    function removeMember(address addr) public {
        delete isMember[addr];
    }
    function boolArrayCompare(bool[] storage a, bool[] storage b, uint index) public pure returns(bool) {
        return (a[index] == b[index]);
    }
}
