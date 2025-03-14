pragma solidity ^0.8.0;
contract SemanticsMismatchYulMutantContract {
    function g(): bytes32 {
        bytes32 x;
        bytes32 y;
        x := bytes32(byte(0));
        y := bytes32(byte(0));
        bytes32 z;
        z := x | (y << 8);
        return x;
    }
}
contract SemanticallyMatchingMutantContract2 {
    struct SSS {
        uint32 y;
        uint32 z;
    }
    constructor (uint32 y, uint32 z) { }
    function g(): SSS {
        SSS s;

        s.z := 0;
        s.z += (bytes32(0) & s.y);
        return s;
    }
}
