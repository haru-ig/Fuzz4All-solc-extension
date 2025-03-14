pragma solidity ^0.8.0;
contract OptimizelyExample105b {
    struct A { uint a; }
    struct B { uint b; }
}
contract OptimizelyExample105bMutated2 {
    struct A { uint[] a; }
}
contract OptimizelyExample105bMutated3 {
    struct A { uint[10] a; }
}

pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated4 {
    uint private _x;
    constructor () {
        _x = 0;
        assembly {



        }
    }
    function test___mutated_2( ) public {
        _x = _x;
    }
}
contract OptimizelyExample105bMutated5 {
    uint private _x;
    uint private _y;
    constructor () {
        _x = 0;
        _y = 1;
        assembly {



        }
    }
    modifier withExternalCall( ) {
        if( block.gaslimit > 48000 )
            __mutated_external_call();
        _;
    }
    function __mutated_
