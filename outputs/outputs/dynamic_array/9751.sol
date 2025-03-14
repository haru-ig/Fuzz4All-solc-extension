pragma solidity ^0.8.0;
contract Modified {
    struct Data {
        uint foo;
    }
    function fTest(Data memory d) public pure {
        d.foo = d.foo + 1;
        d.foo = d.foo * 2;
    }
}
