pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_0() {
        require(y<z__);
        _;
    }
    function test18() public {
       z__ = 0;
       y++;
    }
}
