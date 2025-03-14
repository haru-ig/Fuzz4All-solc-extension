pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 y;
        uint256 z;
    }
    event Birth(uint256 timestamp);
    uint256 newContactsY;
    uint256 newContactsZ;
    function main() public view returns (MixedContacts25 memory) {
        newContactsY = this.newContactsY;
        newContactsZ = this.newContactsZ;
        emit Birth(block.timestamp);
        return MixedContacts25({y: newContactsY, z: newContactsZ});
    }
    function setY(uint256 newContactsY) public {
        this.newContactsY = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        this.newContactsZ = newContactsZ;
    }
}
