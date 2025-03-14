pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications2 {
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
        unchecked {
            overflow++;
            overflow++;
        }
        return 1 + overflow + overflow2;
    }
}
