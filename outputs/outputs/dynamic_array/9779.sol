pragma solidity ^0.8.0;
contract Original {
    struct Data {
        uint x;
    }

    function fTest(Data memory d) public pure {
        uint y;
        y = d.x;
        d.x = 3;
        y = d.x;
        d.x = 3;
        d.x = 3;
        d.x = 1;
    }
}
