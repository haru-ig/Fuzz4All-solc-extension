pragma solidity ^0.8.0;
contract semantics
{
    function fallback() public pure {}
}
contract callers
{
    function functionwithfallback() public payable {}
    function functionwithbothfallback() public contract simplefallback {}
    function callwithfallback() public { contract simplefallback {} }


    function getCallWithFallbackResult() public returns (bool) { return callwithfallback() }
}
