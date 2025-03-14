pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public x;
    uint public y;
    modifier test() {
        require(y!=0,"Invalid state");
        _;
    }
    function test() public test payable {
        x = 12*y;
    }
}
