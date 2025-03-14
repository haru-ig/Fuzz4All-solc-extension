pragma solidity ^0.8.0;
contract C1 {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    struct NameMapping {
        uint name;
        uint length;
    }
    mapping (uint => NameMapping) public names2;
    function modify(uint newname, uint newnamelength) public {
        NameMapping memory n2;
        n2.name = newname;
        n2.length = newnamelength;
        (names, namelength) = (newname, newnamelength);
    }
