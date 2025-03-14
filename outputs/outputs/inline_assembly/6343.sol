pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    MixedContacts memory contacts;
    uint256 a;
    uint256 b;
    uint256 c;
    address payable owner;
    bytes32 private immutable name;
    mapping(address => bool) internal canWrite;
    constructor() {
        owner = msg.sender;
        name = "mixedContacts";
    }
    function main() public view returns (MixedContacts memory) {
        return MixedContacts({y: c, z: b});
    }
    function readContacts() public view returns(uint256, uint256, uint256, uint256, address) {
        return (a,b,c,d, address(contacts));
    }
    function checkAndWrite() public {
        require((msg.sender == owner) || canWrite[msg.sender], "Caller isn't the owner nor the contacts");
    }
    function writeContacts(uint256 newContactsY, uint256 newContactsZ, uint256 newContactsR) public {
        require(msg.sender == owner, "Caller isn't the owner");
        require(newContactsY > 0, "Contacts Y must be greater");
        require(newContactsZ > 0, "Contacts Z must be greater");
        a = newContactsY;
        b = newContactsZ;
        c = newContactsR;
    }
    function setY(uint256 newContactsY) public {
        c = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
    function setLastWriter(address payable newLastWriter) public {
        canWrite[newLastWriter] = false;
    }

}
