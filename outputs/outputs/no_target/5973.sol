pragma solidity ^0.8.0;
contract C {
    uint8 private p;
    bytes1 private c;
    address private d;
    function setPublic(uint8 d8, bytes memory bc) public {
        p = d8;
        c = bc[2];
        d = add(d, add(bc, add(bc, bc)));
    }
}
