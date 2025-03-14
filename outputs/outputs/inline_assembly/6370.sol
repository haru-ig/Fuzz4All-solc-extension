pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample20 {
    struct MixedContacts20 {
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 g;
        uint256 h;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    function setX(uint256 newContactsX) public {
        a = newContactsX;
    }
    function setY(uint256 newContactsY) public {
        b = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        c = newContactsZ;
    }
    function setG(uint256 newContactsG) public {
        d = newContactsG;
    }
    function setH(uint256 newContactsH) public {
        e = newContactsH;
    }
}
