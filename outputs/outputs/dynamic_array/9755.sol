pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Data {
        uintfoo;
    }

    Data public d;
    function fTest(uint i) public pure {
        d.foo = i + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Data {
        struct Nested {
            uint foo;
        }
        Nested nested;
    }
    Data public d;
    function fTest()  public pure {

        d.nested.foo = d.nested.foo + 1;
    }
}
