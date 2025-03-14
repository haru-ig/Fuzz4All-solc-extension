pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify(uint newname, uint newnamelength) public {
        uint names_id_before;
        uint names2_id_before;
        uint names_id_before_copy;
        uint names2_id_before_copy;
        names_id_before = names_id;
        names2_id_before = names2_id;
        uint names_id_copy = names_id_before;
        uint names2_id_copy = names2_id_before;
        (names_id_before, names2_id_before) = (names2_id_before, names_id_before);


        names_id_copy = newname;
        names2_id_copy = newnamelength;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify_no_inline(uint newname) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = namelength;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify_no_inline(uint newname) public {
        uint names_id_before;
        uint names2_id_before;
        uint names_id_before_copy;
        uint names2_id_before_copy;
        names_id_before
