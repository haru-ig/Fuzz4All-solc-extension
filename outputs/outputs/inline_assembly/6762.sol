pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint num);
    function anotherOperation5() external returns (uint8 test) {
        uint8 test1;
        test1 = 0;
        test1 = 2;
        emit ELog(1);
        return test1;
    }
}

contract MixedContactsExample509 {
    mapping (address => uint8) public contacts;
    mapping (uint8 => address) private addresses;
    event ELog(uint indexed value);
    function addContact(address _address) public {
        require(_address!= address(0));
        require(contacts[_address] == 0);
        contacts[_address] = addContact;
        addresses[addContact] = _address;
    }
    function getAddressForContact(uint8 _contactId) public view returns (address) {
        require(_contactId < 3);
        return (addresses[_contactId]);
    }
    function returnContactAddress(uint8 _contactId) public view returns (address) {
        require(_contactId < 3);
        return (addresses[_contactId]);
    }
}
