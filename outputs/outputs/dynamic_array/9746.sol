pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Data {
        uint foo;
    }

    function fTest(Data memory d) public pure {
        d.foo = d.foo;
    }
}
