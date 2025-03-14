pragma solidity ^0.8.0;
interface MixedContactsInterface {
    function someOperation() external returns (uint);
}
contract MixedContactsExample101 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint y;
    mapping(address => MixedContactsInterface) public contacts;
    function addContact(MixedContactsInterface add) public {
        contact.push(address(add));
    }
    function getContactLength() public view returns (uint) {
        return contact.length;
    }
    function returnContact(uint id) public view returns (address) {
        return contact[id];
    }
  }

pragma solidity ^0.8.0;

contract MixedContactsExample101 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint y;
    address[] private contact;
    function addContact(address calldata add) public {
        contact.push(add);
    }
    function getContactLength() public view returns (uint) {
        return contact.length;
    }
    function returnContact(uint id) public view returns (address) {
        return contact[id];
    }
  }
