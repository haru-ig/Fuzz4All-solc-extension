pragma solidity ^0.8.0;
contract FallbackExecutionWithStruct
{
    address public immutable addr;
    function callFallback() public pure returns (address) {
        return msg.sender;
    }
}
