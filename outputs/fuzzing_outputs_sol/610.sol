pragma solidity ^0.8.0;
contract FallbackTest
{
    constructor()
    {}
    receive() payable
    {
    }
}

pragma solidity ^0.8.0;
contract FallbackTest
{
    constructor()
    {}
    fallback() payable
    {
    }
}
