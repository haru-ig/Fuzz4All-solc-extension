pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications2 {
    function add(uint a, uint b)
        public pure
        returns (uint)
    {
        unchecked {
            a--;
            b--;
        }
        unchecked {
            add21(a, b);
        }
    }
}
