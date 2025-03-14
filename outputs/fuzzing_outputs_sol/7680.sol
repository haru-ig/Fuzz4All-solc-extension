pragma solidity ^0.8.0;
contract FallbackCallSemanticsEquivalence
{
    function fallback() external {

        SemanticsEquivalence fallbackContract = SemanticsEquivalence(0xdeadbeef);
        fallbackContract.set(100);
    }
}
