pragma solidity ^0.8.0;
contract Mutated {
    struct Data is {
        uint x;
    }
    function fTest(Data memory d) public pure {
        d.x = 3;
        d.x = d.x *= 5;
        d.x = 3;
    }
}
