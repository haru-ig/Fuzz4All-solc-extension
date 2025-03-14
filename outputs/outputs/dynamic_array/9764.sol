pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        string foo;
    }
    function fTest(Data memory d) public pure {
        Data memory new_;
        new_.foo = "bar";
        d = new_;
    }
}
