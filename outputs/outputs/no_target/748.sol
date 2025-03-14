pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentWithRevert {
    function add21(uint a, uint b)
        public pure
        returns (uint)
    {
        unchecked {
            revert();
        }
        return 1 / 0;
    }
}
