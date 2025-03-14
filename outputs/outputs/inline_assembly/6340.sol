pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    MixedContacts25 previous;
    mapping(uint256 => MixedContacts25) contacts;
    constructor(uint256 _x) public {
        previous = MixedContacts25({y: 1, z: 0});
        contacts[0] = previous;
        previous.setZ(100);
        previous.setY(uint8(1025));
    }
    function getPreviousContactsInFormOf24() public view returns (MixedContacts24 memory) {
        return MixedContacts24({y: previous.y, z: previous.z});
    }
    function getContacts() public view returns (MixedContacts25 memory) {
        return contacts[0];
    }
}
