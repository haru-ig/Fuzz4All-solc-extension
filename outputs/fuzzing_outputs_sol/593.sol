pragma solidity ^0.8.0;
contract RevertTest0x8040
{
    constructor()
    {}
    fallback() external payable
    {
        revert("revert");
    }
}
contract RevertTest0x40
{
    constructor()
    {}
    fallback() external payable
    {
    }
}
