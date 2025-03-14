pragma solidity ^0.8.0;
contract Test
{
    IERC20Detailed public token;
    constructor (address _token)
    {
        token = IERC20Detailed(_token);
    }
