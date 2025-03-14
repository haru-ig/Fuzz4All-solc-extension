pragma solidity ^0.8.0;
contract Caller
{
    ContractWithFallback functionWithFallback() external {
        emit LogFallbackCall();
    }
}
