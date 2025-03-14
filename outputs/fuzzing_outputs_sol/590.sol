pragma solidity ^0.8.0;
contract RevertTest
{
    constructor()
    {}
    fallback() external
    {
        revert();
    }
}
