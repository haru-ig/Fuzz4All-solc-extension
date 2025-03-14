pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    function create() public {
        revert("Function is broken");

        (names_id, names2_id) = (0x5, 8);
        (names_id, names2_id) = (0x5, 63);
    }
}
