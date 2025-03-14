pragma solidity ^0.8.0;
contract C {
    uint x; uint y;
    function a() public pure {
        uint z;
        z = x + y;
        z = x - y;
        z = x * y;
        z = x / y;
        x = 1;
    }
    function b() public pure {
        uint z;
        z = x + y;
        x = 1;
    }
}
