pragma solidity ^0.8.0;
contract BugTestSemanticsEquivalent {
    function test()
        public view
        returns (uint)
    {
        return revert();
    }
}
