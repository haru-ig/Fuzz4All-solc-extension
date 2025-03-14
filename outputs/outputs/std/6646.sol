pragma solidity ^0.8.0;
contract Mutate72 {
    struct Foo {
        uint56 bar;
    }
    constructor () public {}
    Foo public foo;
    function setFoo( uint56 _bar ) public {
        foo = Foo({ bar: _bar });
    }
}
