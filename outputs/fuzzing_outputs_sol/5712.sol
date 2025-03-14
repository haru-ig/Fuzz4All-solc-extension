pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(z>0,"Not a positive number");
        _;
    }
    function test() public z_greater_than_0 {
        x = 1 * 2;
        y = 10;
        z = y * 2 + 1;
    }
}
