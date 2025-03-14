pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function create(uint nameId) public {


        require(nameId > 10, "Name should only be created by 10 digits");
        names_id = nameId;
        names2_id = nameId;
    }
}
