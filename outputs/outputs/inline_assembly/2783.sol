pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    constructor() public {
        uint names_id_before = names_id;
        uint names2_id_before = names2_id;
        names_id = 2;
        names2_id = 0x3;
        (names_id, names2_id) = (2, 0x3);
    }
}
