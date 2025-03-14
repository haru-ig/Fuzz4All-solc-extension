pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        string name;
        uint124 value;
        mapping(uint124 => string) keytovalue;
    }
    constructor() {
        S memory s1;
        s1.name = "";
        s1.value = 0;
        s1.keytovalue[0] = "";
    }
}
