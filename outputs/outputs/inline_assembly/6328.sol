pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 _y;
        uint256 _z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts memory){
        return MixedContacts({_y: a, _z: b});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}
