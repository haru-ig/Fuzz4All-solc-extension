pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public x__;
    uint public y__;
    uint public z;
    modifier x_greater_than_0(uint __i0) {
        require(y__ >= __i0);
        _;
    }
    modifier y_greater_than_0(uint __i1) {
        require(x__ >= __i1);
        _;
    }
    function test20() public {
        z = y > x? x : y;
   x__ = 12;
   y__ = 12;
   z = y > x? x : y;
   x__ = 12;
   y__ = 0;
   z = y > x? x : y;
    }
}
