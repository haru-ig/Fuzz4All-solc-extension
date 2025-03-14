pragma solidity ^0.8.0;
contract L2 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    uint _x = 10;
    uint _y = 80;
    function f() public {

        _x = 3;
        _y = 42;
    }
    function g() public returns (uint z) {
        z = _x;
        if (_x < 3) {
           _x = _x + 4;
        }
        _y = _y + 32;
    }
}
