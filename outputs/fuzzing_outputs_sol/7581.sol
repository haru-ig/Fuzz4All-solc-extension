pragma solidity ^0.8.0;
contract Caller
{
    function dummyCall() public pure returns (uint)
    {
        uint r = 0;
        r= 1;
        return r;
    }
    function call(uint c) public {
        Caller.dummyCall();
        require(c == 1, " == 1");
    }
}
