pragma solidity ^0.8.0;
contract Simple {
    uint256 constant _MIN_POW = 16;
    uint256 constant _MAX_POW = 128;
    function safePow(uint256 _base, uint256 _power) internal pure returns (uint64 result) {
        require(_power <= _MAX_POW && _power >= _MIN_POW);
        for (uint256 i = 1; i <= _power; i *= 2) {
            result = result * _base;
        }
    }
}
