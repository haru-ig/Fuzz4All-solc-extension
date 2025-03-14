pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint public names;
    uint public namelength ;
    struct NameMapping {
        uint name;
        uint length;
    }
    mapping (uint => NameMapping) public names2;
    function modify(uint newname, uint newnamelength) public {
        NameMapping memory n2 = names2[names];
        names2[names].name = newname;
        names2[names].length = newnamelength;
        (names, namelength) = (newname, newnamelength);
    }
