pragma solidity ^0.8.0;
contract MixedContactsExample602Mutated {
    event E10(uint id, uint size);
    event E11(uint id, uint size);
    event E12(uint size);
    event E13(uint id);
    event E14(uint id);
    event E15(uint id);
    uint id;
    constructor() public {
        id = 1;
        emit E11(id, id);
        id = 2;
        emit E12(id);
        id = 3;
        emit E13(id);
        id = 4;
        emit E14(id);
        id = 5;
        emit E15(id);
    }
    function set(uint a) public {
        id = a;
        emit E10(id, a);
    }
    function get(uint a) public view returns (uint b) {
        b = id;
    }
}
contract MixedContactsExample679Mutated {
    event E16(uint id, uint size);
    event E17(uint id, uint size);
    event E18(uint size);
    event E19(
