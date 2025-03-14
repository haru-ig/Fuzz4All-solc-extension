pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayTypeCheckPre06 {
    struct Test { uint x; uint y; }
    constructor ()
    {
        Test memory foo;
        foo.x = 5;
        foo.y = 7;
        x = 42;
    }
}
