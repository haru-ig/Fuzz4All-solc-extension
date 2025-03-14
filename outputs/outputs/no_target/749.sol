pragma solidity ^0.8.0;
contract RevertTestSemanticsEquivalentModifications {
    function sub21(uint a, uint b)
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
            overflow2 |= uint(overflow);
            overflow2 &= uint(-overflow);
        }
        return 1 - overflow + overflow2;
    }
}
contract RevertTest_0 {
    using RevertTestSemanticsEquivalentModifications for uint;
    function add23(uint a, uint b) public pure returns (uint)  {
        uint overflow;
        uint overflow2;
        checked {
            overflow++;
        }
        unchecked {
            overflow2++;
            overflow2++;
            overflow2++;
        }
        return 1 - overflow + overflow2;
    }
}
