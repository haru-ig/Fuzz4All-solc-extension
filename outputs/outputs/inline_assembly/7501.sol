pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y;
    uint z;
    function simple(uint _x) public {
        uint _tmp = _x + 10;
        if ( z > _x) revert("Invalid input");
        z = _tmp;
        uint _y = _tmp + x;
        y = _y - z;
    }

}
