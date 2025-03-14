pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
    struct MixedContacts23 {
        uint256 y;
        uint256 z;
    }
    mapping(uint256 => uint256) public contactsY;
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts23 memory){
        MixedContacts23 memory tmp = MixedContacts23({y: c, z: b});
        return tmp;
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
        assert(contactsY[a] == newContactsY);
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
        assert(contactsY[a] == newContactsY);
        assert(contactsY[b] == newContactsZ);
    }
}
