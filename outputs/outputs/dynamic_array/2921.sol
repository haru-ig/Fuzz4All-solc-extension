pragma solidity ^0.8.0;










pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23v2 {
    uint a;
    constructor () public {
        uint b = a;
        uint b = a;
        b = a;
        a = 10;
        a = b;
    }
}
