pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_not_0() {
        require(z!=0,"Zero");
        _;
    }
    modifier z_greater_than_0() {
        require(y<=z,"Invalid zero condition");
        _;
    }
    function test() public payable z_not_0 z_greater_than_0 {
        x = 1 * 2;
        y = 10;
        z = y * 2 + 1;
    }
}
