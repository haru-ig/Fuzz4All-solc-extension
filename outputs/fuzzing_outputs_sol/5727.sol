pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint public x;
    uint public y;
    uint public z;
    uint public total;
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
        x = 14557165;
        y = 444855779765;
    }
}
