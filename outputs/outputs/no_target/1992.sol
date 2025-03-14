pragma solidity ^0.8.0;
library Sematic {
    function isSematic (uint256 _x) public pure returns (bool) {
        if (0 <= _x) {
            _x >>= 1;
        }
        else {
            _x ^= 8;
        }
        return(_x >= _x + 1 && _x <= type(uint256).max);
    }
}
