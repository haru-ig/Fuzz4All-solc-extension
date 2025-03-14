pragma solidity ^0.8.0;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function setY(MixedContacts25 memory memory) public {
        a = memory.y;
        b = memory.z;
    }
    function setZ(MixedContacts25 memory memory) public {
        b = memory.y;
        c = memory.z;
    }
}
