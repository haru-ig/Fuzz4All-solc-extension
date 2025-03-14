pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract DynamicStore {
    struct S {
        uint8[] memory;
    }
    S[] slots;


    constructor() {

        uint8[] memory reserved;
        slots[0] = S(reserved);
        slots[1] = S(reserved);
        slots(2) = S(reserved);
        slots[3] = S(reserved);
        slots[4] = S(reserved);
        slots[5] = S(reserved);
        slots[6] = S(reserved);
        slots[7] = S(reserved);
        slots[8] = S(reserved);
    }

    function length() public view returns (uint) {
        return slots.length;
    }

    function get(uint i) public view returns (uint8) {
        if (i >= slots.length) return 1;
        return slots[i].memory[
