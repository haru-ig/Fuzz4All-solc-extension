pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        uint foo;
    }
    function fTest(Data memory d) public pure {
        Data memory new_;
        new_.foo = d.foo + 1;
        d = new_;
    }
}
