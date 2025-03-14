pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
    struct MixedContacts23 {
        uint256 y;
        uint256 z;
    }
    uint256 x;
    uint256 y;
    uint256 z;
    function main() public view returns(MixedContacts23 memory){
        return MixedContacts23({y: c, z: b});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        x = newContactsZ;
    }
}
