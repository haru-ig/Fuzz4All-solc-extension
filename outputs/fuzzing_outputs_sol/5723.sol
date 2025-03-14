pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
       require(y>z,"Invalid zero condition");
        _;
    }
    function test() internal returns(uint){
        z = 12 * 20;
       z_greater_than_0;
       return z;
    }
}
