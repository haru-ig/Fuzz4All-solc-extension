pragma solidity ^0.8.0;
contract semanticallyequivalent27
{
    uint x;
    uint y;
    uint z;
    modifier greater_than_0() {
        require(y>z);
        _;
    }
    function test27() public {
       y = 12;
    }
}
