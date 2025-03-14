pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample242 {
    struct MixedContacts44 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts44 memory) {
        return MixedContacts44({y: c, z: b});
    }
    function setY(uint256 newContactsY) public{
        b = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        c = newContactsZ;
    }
}
