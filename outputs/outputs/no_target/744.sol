pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentRevert {
    function add21(uint a, uint b)
        public pure
        returns (uint)
    {
        require(0 < a || b < a, "Cannot divide by 0");
        uint overflow;
        unchecked {
            overflow--;
            overflow--;
        }
        unchecked {
            overflow--;
            overflow--;
        }
        uint a1 + a1;
        return 1 - overflow + overflow2;
    }
}
