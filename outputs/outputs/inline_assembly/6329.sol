pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample22 {
    struct MixedContacts22 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts22 memory){
        return MixedContacts22({y: a, z: b});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}
