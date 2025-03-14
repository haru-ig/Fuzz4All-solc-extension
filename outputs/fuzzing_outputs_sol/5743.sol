pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test19() public {
       z__ = 12;
    }
}
