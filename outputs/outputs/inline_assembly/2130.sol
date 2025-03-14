pragma solidity ^0.8.0;
contract Solidity
{
    function doIt() public returns (string)
    {
        return type(string).name;
    }
    function doIt(uint) public pure returns (uint)
    {
        return type(string).name;
    }
}
