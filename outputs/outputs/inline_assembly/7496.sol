pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y = 0;
    uint z;
    function simple(uint _x) public {
        require(_x == 0, "Input must be 0");
        z = _x;
        y = _x + x;
    }
}
