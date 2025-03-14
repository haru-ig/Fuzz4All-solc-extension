pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    struct MixedContacts26 {
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
    function setX(uint256 newMixedContactsX) public {
        a = newMixedContactsX;
    }
    function setY(uint256 newMixedContactsY) public {
        b = newMixedContactsY;
    }
    function setZ(uint256 newMixedContactsZ) public {
        c = newMixedContactsZ;
    }
    function setG(uint256 newMixedContactsG) public {
        d = newMixedContactsG;
    }
    function setH(uint256 newMixedContactsH) public {
        e = newMixedContactsH;
    }
    function getA() public view returns(uint256) {
        return a;
    }
    function getB() public view returns(uint256) {
        return b;
    }
    function getC() public view returns(uint256) {
        return c;
    }
    function getD() public view returns(uint256) {
        return d;
    }
    function getE() public view returns(uint256) {
        return e;
    }
    function getF() public view returns(uint256) {
        return f;
    }
}
