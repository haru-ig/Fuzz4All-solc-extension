pragma solidity ^0.8.0;
contract New {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y;
        d.x = 1;
        d.x = 2;
        d.x = 3;
        d.x = 4;
        d.x = 5;
        d.x = 6;
        d.x = 7;
        d.x = 8;
        d.x = 9;
    }
}
