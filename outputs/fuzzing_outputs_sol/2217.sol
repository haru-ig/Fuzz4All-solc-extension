pragma solidity ^0.8.0;
contract Mutater1449 {
    uint128 public immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function add(uint128 x) internal pure returns (uint128) {
        return x;
    }
    function div(uint128 x, uint128 y) internal pure returns (uint128) {
        uint128 ret;
        if (y == 0) return 0;
        ret = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
    function fallback() external {
        uint128 x = _x + 1 + 2;
        if (x == _x) {
            _x = 0;
             require(false, "Mutter1449");
         }
        else{
            _x = 0;
         }
        uint128 xd = x - (_x << 1) + 1;
        if ((xd - (xd >> 1)) / 2 > 0){
            if (xd <= 2**31) {
                xd = (x + (_x << 1) + 1) * 105872 + (_x << 1) - 1193182721;
            }
            uint128 xd2 = (xd - (_x >> 1)) + 1;
            require((xd2 + (_x >> 1)) < (2**31 + (xd >> 1)));
        }
    }
}
*/
