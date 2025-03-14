pragma solidity ^0.8.0;
contract Caller
{
        address public fallback;

        constructor()
        {
                fallback = msg.sender;
        }

        fallback function foo(bytes memory) external pure
        {
        }

        receive() external payable
        {
        }
}
