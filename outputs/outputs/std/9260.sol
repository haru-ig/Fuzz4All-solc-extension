pragma solidity ^0.8.0;
contract Array
{
    function getMinimumValue(uint[] memory a)
        public
        pure
        returns (uint minimum)
    {
        for (uint i = 0; i < a.length; i++)
        {
            minimum = minimum < a[i]? a[i] : minimum;
        }
    }
}
contract Test
{
    function test() public pure returns (string memory) {
        uint x = 132819;
        uint[] memory a = [x, x, 198789, 4343, 7613, -21354, -128762];
        uint minimum = Array.getMinimumValue(a);
        assert(minimum == 4343);
        uint y = 21354;
        uint[] memory b = [[],[x, y]];
        minimum = Array.getMinimumValue(b);
        assert(minimum == x);
    }
}
