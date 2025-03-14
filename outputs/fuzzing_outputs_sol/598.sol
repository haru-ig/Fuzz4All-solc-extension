pragma solidity ^0.8.0;
contract RevertTest0x0
{
    constructor()
    {}
    fallback() external pure
    {
        throw;
    }
}
