pragma solidity ^0.8.0;
contract semanticallyequivalent17
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
       z = 12 * 20;
    }
}
