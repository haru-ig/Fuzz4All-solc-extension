pragma solidity ^0.8.0;
contract RevertTestsemanticsRevertOnFailedAssertions {
    function f(uint a, uint b)
        public pure
        returns (uint)
    {
        if (a!= b) revert();
        return a;
    }
}
