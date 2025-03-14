pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts25 memory) {
        MixedContacts25 memory data = MixedContacts25({ y: c, z: b});
        a = newContactsY;
        b = newContactsZ;
        return data;
    }
}
