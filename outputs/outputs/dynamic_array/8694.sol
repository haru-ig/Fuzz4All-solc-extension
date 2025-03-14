pragma solidity ^0.8.0;
contract InitialSemanticallyEquivalentSolidity26_fixed_21 {
    uint256[101] public m;

    struct S {
        struct T { uint x; uint256 y; } f;
        struct T { uint x; uint256 z; } g;
    }
}
