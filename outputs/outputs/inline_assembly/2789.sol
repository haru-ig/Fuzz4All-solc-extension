pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint namelength = 0x4;
    uint names_id_before = 0x1;
    uint names2_id_before = 0x2;

    function modify(uint newname, uint newnamelength) public {



        names_id_before = names_id;
        names2_id_before = names2_id;

        if (names_id_before!= names_id) {
            names_id = newname;

            if (names2_id_before!= names2_id) {


                names2_id = newnamelength;
            }
        }
    }
}
