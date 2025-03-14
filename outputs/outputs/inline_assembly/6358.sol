pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 m;
        uint256 d;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts25 memory) {
        c = a;
        b = a;
        a = b;
        return MixedContacts25({m: a, d: b});
    }
    function setY(uint256 newContactsY) public {
        c = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}
