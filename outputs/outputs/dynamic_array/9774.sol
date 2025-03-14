pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y = d.x;
        d.x = y * 5;
        d.x = 3;
    }
}
