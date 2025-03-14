pragma solidity ^0.8.0;
contract MutatedContactsExample161 is MutatedContactsExample160 {
    mapping(address => Contact) contacts;
    modifier modifiesContacts {
        require(msg.sender == address(contacts[msg.sender]), "You can't modify yourself");
        _;
    }
}
