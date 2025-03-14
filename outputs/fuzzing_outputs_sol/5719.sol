pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z,"Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
       z = 12 * 20;
    }
}
