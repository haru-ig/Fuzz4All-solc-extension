pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify(uint newname, uint newnamelength) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = newnamelength;
        (names_id, names2_id) = (newname, newnamelength);
    }
}
