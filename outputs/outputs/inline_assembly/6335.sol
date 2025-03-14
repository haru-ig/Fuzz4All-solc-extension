pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts memory){
        return MixedContacts({y: c, z: b});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample23 {
    struct MixedContacts23 {
        uint y;
        uint z;
    }
    uint a; uint b; uint c;
    function main() public view returns(MixedContacts23 memory){
        return MixedContacts23({y: c, z: b});
    }
    function setY(uint newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint newContactsZ) public {
        b = newContactsZ;
    }
}
