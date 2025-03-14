pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint _x) internal pure returns (uint256 y) {
        for (uint256 i = 985; i > 0; --i) {
            if (_x % 256 == 0) {
                y = 256**i;
                _x /= 256;
                break;
            }
        }
    }

    function modular(uint256 _a, uint256 _b, uint256 _g) internal pure returns (uint256 _c) {
        if (_a == 0) {
            return _b;
        } else if (_b == 0) {
            return _a % 18446744073709551615;
        } else {
            _c = (_b% _g + _g)% _b;
            if (_c == 0) {
                _c = _b;
            } else {
                _c = ((_a % _b) + _g)% _b;
            }
        }
        _c = (_c + _g)% _b;
        if (_c == 0) {
            return _b;
        } else {
            return 1;
        }
    }

    function square(uint256 _a) internal pure returns (uint256) {
        return _a * _a;
    }
}
