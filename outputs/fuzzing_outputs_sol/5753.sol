pragma solidity ^0.8.0;
contract semanticallyequivalent1
{
    uint public x;
    modifier x__greater_than_0() {
        require(x>x__);
        _;
    }
    function test1() public {
        x__ = 0;
    }
}
