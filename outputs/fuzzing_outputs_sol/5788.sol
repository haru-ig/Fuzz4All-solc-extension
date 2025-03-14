pragma solidity ^0.8.0;
contract SemanticallyEquivalent
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    uint public y_x_minus_z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    modifier z_less_than_2() {
        require(z < 2);
        _;
    }
    function test() public payable z_less_than_2 z_less_than_100{
        z = 10;
        while (z < 10) {
             y_x_minus_z = y-x-z;
             z++;
           }
    }
    function getX() public view returns(uint) {
        return x;
    }
    function getY() public view returns(uint) {
        return y;
    }
    function getZ() public view returns(uint) {
        return z;
    }
    function getY_x_minus_z() public view returns(uint) {
        return y_x_minus_z;
    }
}
