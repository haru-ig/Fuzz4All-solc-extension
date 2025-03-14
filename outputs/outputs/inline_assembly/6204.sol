pragma solidity ^0.8.0;

contract MixedContacts {

  address public whitelist;
  MixedContacts[] public contacts;

  constructor() {
    whitelist = msg.sender;
  }

  function addContact(uint _x, uint _y) public {
    contacts.push(MixedContacts({ _x: _x, _y: _y }));
  }


  function processContacts() public returns (uint) {
    require(msg.sender == blacklist || msg.sender == whitelist);

    contacts.push(MixedContacts({ _x: 340, _y: 230 }));
    contacts[0]._x = 3;
    contacts[1]._x += 2;
    contacts[2]._y += 1;

    for (uint i= 0; i< contacts.length; i++)
      contacts[i]._y = i + 1;







    uint x = MixedContactsExample.main(1);
    return x;
  }

  function updateContact(uint _x, uint _y) public {
    uint idx = 0;
    for (; idx < contacts.length; ++idx) {
      if (contacts[idx]._x == _x) break;
    }
    require(idx < contacts.length);
    if (contacts[idx]._y == _y)
