pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    function modify(uint newname, uint newnamelength) public {
        (names, namelength) = (newname, newnamelength);
    }
}
