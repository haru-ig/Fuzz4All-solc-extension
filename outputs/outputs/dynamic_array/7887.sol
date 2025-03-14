pragma solidity ^0.8.0;
contract Test24 {
    uint[21] public foo;
    function f(uint[21] memory) public payable {
        unchecked {
        }
        foo = foo;
    }
}
contract Test25 {
    uint[21] public foo;
    function f(uint[21] calldata) public payable {
        unchecked {
        }
        foo = foo;
    }
}
 contract Tests30  {
    struct Foo {
        uint public value;
        constructor(uint ival) {
            value = ival;
        }
    }
    uint[] public foos;
    Foo[] public foosslots;
    uint constant INITIAL_foo_slot_count = 3;
    uint[] foosslotcount;
    function initializeArrays() public {
        for (uint i=0 ; i<INITIAL_foo_slot_count ; i++) {
            foos.push(Foo(42).value);
        }
        for (uint i=0 ; i<INITIAL_foo_slot_count ; i++) {
            foosslots.push(Foo(42).value);
        }
        foosslotcount = foosslots.length;
    }
    function assertEqualArrays(address a, address b) public view {
        for (uint i=0 ; i<foo.length ; i++) {
            if (foo[i]!= a.value) return;
        }
        for (uint i=0 ; i<a.value ; i++) {
            if (foo[foo.length+i]!= b.value) return;
        }
        if (!foo) emit FooFailed(a, b);
        else emit FoosMatched(a, b);
    }
    event FooFailed(address index_a, address index_b);
    event FoosMatched(address index_a, address index_b);
}
