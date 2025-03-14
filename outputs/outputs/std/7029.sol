pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;

    function bitAndLeftShift(uint256[] memory _a, uint256[] memory _b) internal pure returns (uint256) {
        return _a[0] & _b[0] >> 24;
    }


    function notContainsZeroInBitmask(uint256[] memory _a) public pure returns (uint256) {
        return _a[0] & 254;
    }


    function setBitmask(uint256[] memory _a) public pure returns (uint256) {
        _a[0] |= 256;
    }


    function XORandSHLXOR(uint256[] memory _a, uint256[] memory _b) public pure returns (uint256) {
        uint256 c = bitAndLeftShift(_a, _b);
        return (c ^ a) & 255;
    }
}
