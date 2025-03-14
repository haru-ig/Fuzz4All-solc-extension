pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
    struct Contact{
        uint256 y;
        uint256 z;
    }
    mapping(uint256 => Contact) public contacts;
    function main() public view returns(Contact memory){
        Contact memory contact = contacts[0];
        return contact;
    }
    function setContact(uint256 newContactId, uint256 y, uint256 z) public {
        contacts[newContactId] = Contact({y:y, z:z});
    }
    function setZ(uint256 newContactsZ) public {
        uint256 newContactId = 0;
        Contact memory contact = contacts[newContactId];
        contact.y = newContactsZ;
    }
}
