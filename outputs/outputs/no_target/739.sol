pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications {
    function add21(uint a, uint b)
        public pure
        returns (uint)
    {
        uint overflow;
        uint overflow2;
        unchecked {
            overflow--;
            overflow--;
        }
        unchecked {
            overflow2--;
            overflow2--;
        }
        return 1 - overflow + overflow2;
    }
}
