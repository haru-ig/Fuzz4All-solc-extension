pragma solidity ^0.8.0;
contract m08 {
    function M8(uint256 _a) public pure {
        (uint256 _b, uint256 _c) = _convert(uint256 _a);
    }

    function _convert(uint256 _a) internal pure returns (uint256 _b, uint256 _c) {
        if (_a + 1 > _a) {
            _b = 0;
            _c = _a;
        } else if (_a - 1 < _a) {
            _c = -_a;
            _b = _a;
        } else {
            _b = _a;
            _c = _a * (2 ** 255 - 2);
        }
    }
}
