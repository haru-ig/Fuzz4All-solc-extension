pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts21 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts21 memory) {
        a = a + 1;
        return MixedContacts21(c + 1, a + 1);
    }
    function setY(uint256 newContactsY) public {
        c = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}
contract MixedContactsExample13 {
    struct MixedContacts13 {
        uint256 x;
        uint256 y;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts13 memory) {
        return MixedContacts13(a + 1, c + 1);
    }
    function setX(uint256 newContactsX) public {
        a = newContactsX;
    }
    function setY(uint256 newContactsY) public {
        b = newContactsY;
    }
}

pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
    struct MixedContacts12 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts12 memory) {
        return MixedContacts12(a + 1, c + 1);
    }
    function setY(uint256 newCircsY) public {
        a = a + 1;
        c = newCircsY;
    }
    function setZ(uint256 newContactsZ) public {
        a = a + 1;
        b = newContactsZ;
    }
}



/* struct Contacts1 { uint256 id; uint256
