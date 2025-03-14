pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
       x = 14557165;
    }
        modifier nonzero_x
    {
        require(x>0, "x is not >= 0");
        _;
    }
    function test1() public nonzero_x  payable {
       x = 14557165;
    }
}
