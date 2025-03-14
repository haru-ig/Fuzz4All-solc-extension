pragma solidity ^0.8.0;
contract mutatedfallback
{
    pragma experimental Fallback;
    function fallback() public pure {}
}
