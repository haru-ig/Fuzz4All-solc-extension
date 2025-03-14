pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify_before(uint newname, uint newnamelength) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_after(uint newname, uint newnamelength) public {
        uint names2_id_after = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
}
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function modify_before2(uint newname, uint newnamelength) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_after2(uint newname, uint newnamelength) public {
        uint names2_id_after = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_before3(uint newname, uint newnamelength) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_after3(uint newname, uint newnamelength) public {
        uint names2_id_after = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_before4(uint newname, uint newnamelength) public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = newname;
        names2_id = newnamelength;
    }
    function modify_after4(
