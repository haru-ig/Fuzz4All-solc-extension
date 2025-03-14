pragma solidity ^0.8.0;
contract Modifications2_SEM {
    constructor(uint256 _x, uint256 _y) public{
        uint256 x = _x * _y;
        a = x;
        b = x > _y? mod(_x,-_y) : (mod(x-a, _y));
    }
    uint256 public a;
    uint256 public b;

    function mod(uint256 _a, uint256 _b) internal pure returns (uint256) {
        if (_b == 0) return 0;
        if ((_a / _b) % 1!= 0) return _a / _b;
        return _a % _b;
    }
}
