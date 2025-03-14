pragma solidity ^0.8.0;
contract semanticallyequivalent2
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
    bytes32 hash;

    function test() public payable z_not_0 z_greater_than_0(bytes32 h) z_not_0 {
       hash = h;
    }
}
