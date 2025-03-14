pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        uint128 bar;
    }
    function fTest(Data memory d) public pure {
        Data memory new_;
        new_.bar = d.bar + 1;
        d = new_;
    }
}
