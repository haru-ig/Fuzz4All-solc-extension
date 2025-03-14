pragma solidity ^0.8.0;
contract Mutated {
    uint x = 0;
    struct Data {
        uint x;
    }
    function fTest(in Data memory d) public pure {
        uint y = d.x;
        d.x = y * 5;
        d.x = 3;
    }
}
