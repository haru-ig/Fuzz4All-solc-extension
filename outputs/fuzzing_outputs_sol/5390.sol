pragma solidity ^0.8.0;









contract callers
{
    function callSimplefallback() external
    {
        simplefallback f;
        f.fallback();
    }

    function callFallbackWithABI() external
    {
        WithFallbackWithABI f;
        f.fallback();
    }

    function callFallbackWithEther() external payable
    {
        simplefallback f;
        f.fallback();
    }
}
