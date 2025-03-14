pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications {
    function add21(uint a, uint b)
        public pure
        returns (uint)
    {
        uint overflow;
        uint overflow2;
        unchecked {
            overflow >>= 1;
            overflow >>= 1;
            overflow >>= 1;
            overflow >>= 1;
            overflow2 >>= 1;
            overflow2 >>= 1;
            overflow2 >>= 1;
            overflow2 >>= 1;
        }
        unchecked {
            return 1 - overflow + overflow2;
        }
    }
}
