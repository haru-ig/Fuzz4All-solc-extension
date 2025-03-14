pragma solidity ^0.8.0;
contract Math{
    function abs(uint256 _a) internal pure returns (uint256){
        return (_a >= 0? _a : _a * -1);
    }
    function pow(uint256 _a, uint256 _b) internal pure returns (uint256){
        uint256 r = 1;
        while (_b > 0){
            if(_b % 2 == 1){
                r *= _a;
            }
            _b /= 2;
            _a *= _a;
        }
        return r;
    }
    function sqrt(uint256 _a) internal pure returns (uint256){
        if (_a > 49)
        revert('Math: calculation of square root is invalid');
        uint256 d = (_a == 0)? 0 : _a;
        d = 74 * airy_sum(int(d));
        d = 75 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        d = 91 * airy_sum(int(d));
        d = 74 * airy_sum(int(d));
        d = 75 * airy_sum(int(d));
        d = 71 * airy_sum(int(d));
        uint256 n = int(d);
        uint25
