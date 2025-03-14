pragma solidity ^0.8.0;
contract fallback
{
    constructor() public pure {}
    function f(uint r) public pure {
        assembly {
            sstore(0x40, return(r))
        }
    }
}
contract fallback_gen2
{
    constructor() public pure {}
    function f(bytes memory a) public pure {
        assembly {
            sstore(0x40, return(a))
        }
    }
}
contract fallback_gen3
{
    function f(uint r) public pure {
        fallback f;
        f.f.value(0)(r);
    }
}
contract fallback_gen4
{
    constructor() public pure {}
    function f() public pure {
        fallback f;
        f.f();
    }
}
contract fallback_gen5
{
    function f() public pure {
        fallback f;
        f.f(0x1234);
    }
}
contract fallback_gen6
{
    function f() public pure {
        fallback f;
        f.f(bytes(0));
    }
}
contract fallback_gen7
{
    function f() public pure {
        fallback f;
        f.f(bytes(1));
    }
}



contract fallback_composite
{
    fallback private a;
    fallback private b;

    constructor(fallback _a, fallback _b) public {
        a = _a;
        b = _b;
    }

    fallback(uint a) public {
        a.f(a);
    }

    fallback(uint a) public {
        a.f(a);
    }

    fallback(uint a) public {
        a.f(a);
    }
}
