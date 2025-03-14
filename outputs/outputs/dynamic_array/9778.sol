pragma solidity ^0.8.0;
contract Detailed {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
        uint y = d.x;
        d.x = 3;
        d.x = y + 6;
    }
}
