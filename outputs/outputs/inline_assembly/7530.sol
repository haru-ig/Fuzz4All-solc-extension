pragma solidity ^0.8.0;
contract Example2 {
    uint x;
    uint y;
    uint z;







    function g(uint _x, uint _y, uint _z) public {
        x = x + _x;
        y = y + _y;
        z = _z;
    }
}
