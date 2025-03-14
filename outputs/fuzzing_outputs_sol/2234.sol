pragma solidity ^0.8.0;
contract Mutater18478 {
    uint8 public constant MIN_N = 1;
    uint8 public constant MAX_N = 8;
    function getMod(uint8 _n, uint8 _p) public pure returns (uint8 mod) {
        mod = _n % _p;
        require(mod < _p, "Mutter184");
    }
    function mangle(bytes32 c, string memory s) public pure returns (uint8) {
        uint8 x = bytes32(uint256(c) + uint256(s));
        return bytes32(c) < c || x > bytes32(uint256(s) << 8) || x < bytes32(uint256(s) >> 24);
    }
}
