pragma solidity ^0.8.0;
contract C
{
    contract A
    {
        function f(uint) public pure returns (uint)
        {
            return 0;
        }
    }
    constructor A() public {}
}
