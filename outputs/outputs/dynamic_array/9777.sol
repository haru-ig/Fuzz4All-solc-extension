pragma solidity ^0.8.0;
contract Mutated2 {
    struct Data {
        uint j;
    }
    function fTest(Data memory d) public pure {
        d.j = 5;
        d.j = 2;
    }
}
