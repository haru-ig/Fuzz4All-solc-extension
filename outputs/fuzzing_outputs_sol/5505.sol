pragma solidity ^0.8.0;
contract successmutablefallback98
{
    receive()
    external
    {
        _;
    }
}

pragma solidity ^0.8.0;
contract successmutablefallback99
{
    receive()
    external
    {
        revert("(original)", "revert message");
    }
}

pragma solidity ^0.8.0;
contract SuccessReceiver
{
    receive() payment external {}

    fallback() external payable { revert("(caller)", "fallback"); }
}
