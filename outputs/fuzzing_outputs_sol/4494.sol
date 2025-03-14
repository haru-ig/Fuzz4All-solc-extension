pragma solidity ^0.8.0;
contract Caller {
    function get(uint y) public {
        x(y);
    }
    function x(uint z) public pure {
        uint x = 1;
    }
}
