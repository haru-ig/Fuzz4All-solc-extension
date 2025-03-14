pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalent {
    function add0(uint a, uint b)
        public pure
        returns (uint)
    {
        uint overflow1;
        unchecked {
            overflow1--;
            overflow1--;
        }
        return 1 - overflow1 + overflow1;
    }
    function add5()
        public pure
        returns (uint)
    {
        uint overflow2;
        unchecked {
            overflow2--;
            overflow2--;
        }
        return 1 - overflow2 + overflow2;
    }
    function add10()
        public pure
        returns (uint)
    {
        uint overflow3;
        unchecked {
            overflow3--;
            overflow3--;
        }
        return 1 - overflow3 + overflow3;
    }
}
