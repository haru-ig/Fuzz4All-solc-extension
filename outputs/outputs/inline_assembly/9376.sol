pragma solidity ^0.8.0;
contract A {
    uint myUint;
    function () public {
        myUint = 10;
    }
    function f() public {
        (uint x_, uint y_) = x;
        (uint z_, uint a_) = (x_,y_);
        (x,y) = (a_,z_);
    }
}
