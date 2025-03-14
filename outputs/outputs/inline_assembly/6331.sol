pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
    struct MixedContacts23 {
        uint256 y;
        uint256 z;
        uint x;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    uint x;
    function main() public view returns(MixedContacts23 memory){
        return MixedContacts23({y: a, z: b, x: x});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
    function setX(uint256 newContactsX) public {
        x = newContactsX;
    }
}
