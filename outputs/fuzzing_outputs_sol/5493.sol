pragma solidity ^0.8.0;
contract successmutablefallback98
{
    contract inner
    {
        receive() external payable {}
    }
    fallback() external payable calldata
    {
        emit FallbackCalled();
    }
}
