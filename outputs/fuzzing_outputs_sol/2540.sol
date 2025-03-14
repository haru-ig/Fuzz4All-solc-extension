pragma solidity ^0.8.0;
contract Mutator
{
  fallbackValue += 7;
}

contract Caller
{
    function call() public payable
    {
        Caller.setFallback(address(NoFallbackInterface(0)));
        if (address(NoFallbackInterface(0))!= address(this)) revert();
        uint256 newFallback;
        (,newFallback) = mutator();
        uint256 expectedValue = 7;
        (,expectedValue) = simpleFallback();
        assertEq(expectedValue, newFallback);
    }
    function mutator() public returns (uint256 value, uint256 _fallback)
    {
        (,value) = mutator();
    }
    function simpleFallback() public returns (uint256 value, uint256 _fallback)
    {
        fallback();
        (,value) = mutator();
        _fallback = fallbackValue;
    }
}
