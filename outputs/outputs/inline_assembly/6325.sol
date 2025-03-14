pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 y;
    uint256 z;
    function main() public view returns(MixedContacts memory){
        return MixedContacts({y: y, z: z});
    }
    function setY(uint256 newContactsY) public {
        y = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        z = newContactsZ;
    }
}
