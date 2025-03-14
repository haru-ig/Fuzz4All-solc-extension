pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample242 {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    address addr;
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts24 memory) {
        return MixedContacts24({y: c, z: b});
    }
    function setY(uint256 newContactsY) public {
        addr.transfer(newContactsY);
    }
    function setZ(uint256 newContactsZ) public {
        addr.transfer(newContactsZ);
    }
}
