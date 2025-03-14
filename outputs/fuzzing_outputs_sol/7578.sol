pragma solidity ^0.8.0;
contract Caller
{
    function dummyCall() public pure returns (uint)
    {
        return 0;
    }
    function call(uint c) public {
        require(c == 0, "!= 0");

        Caller.dummyCall();
    }
}
