pragma solidity ^0.8.0;
contract Test {
    function getInteger() public pure returns (int128) {
        return 1000000000;
    }

    function add128(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {

        uint x = uint256(a) + uint256(b) + uint256(c);
        return x;
    }
}
