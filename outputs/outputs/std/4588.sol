pragma solidity ^0.8.0;
contract Convert {
    function conv(string memory value, uint8[8] memory bytes) public pure {
        bytes[3] memory b = new bytes[3];
        for (uint8 i = 0; i < 3; i++) {
            b[i] = bytes[i];
        }
    }
}
interface Math {
    function sqrt(uint256 x) external pure returns (uint256);
    function pow(uint x, uint y) external pure returns (uint);
    function mod(uint a, uint b) external pure returns (uint);
}
