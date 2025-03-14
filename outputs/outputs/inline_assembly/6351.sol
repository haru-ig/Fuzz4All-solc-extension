pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 y;
        uint256 z;
    }
    uint256 x;
    function main(uint256 oldY) public view returns (MixedContacts25 memory) {
        return MixedContacts25({y: y, z: x});
    }
    function setX(uint256 newContactsY) public {
        x = newContactsY;
    }
}
