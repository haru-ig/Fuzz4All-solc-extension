pragma solidity ^0.8.0;
contract failedmutatedfallbackmutated
{

    function foo() pure public returns (uint256)
    {
        return 0;
    }

    function nonmutatedfoo() pure public returns (uint256)
    {
        return foo();
    }

    function mutatedfoo() pure public returns (uint256)
    {
        uint256 x = foo();
        foo = 0;
        return x;
    }
}
