pragma solidity ^0.8.0;
contract OldMutations2 {
    function test(uint x, uint y) public pure {
        uint256 z = 5;
        unchecked {
            uint o = (uint)x + (uint)y + x - y - y - x - z;
        }
        uint b = uint256(x);
    }
    function test2(uint x, uint y) public pure {
        uint256 z = (uint)uint256(x) + uint256(x) - uint256(x) - 5;
    }
    function test3(uint x, uint y) public pure {
        uint256 z = uint256(x) + x - uint256(x) - x - 5;
    }
}
