pragma solidity ^0.8.0;
contract Mutate1 {

    constructor(uint256 _x) {
        assembly {
            x := _x
        }
    }

    function add(int256 _y) public pure returns (int256) {
        int256 _x = int256(uint256(x));
        int256 _y0 = _y * 2;
        return uint256(_x % 871222) + _y0;
    }

    function sub(int256 _y) public pure returns (int256) {
        int256 _x = int256(uint256(x));
        int256 _y0 = _y * 5 - _x;
        return uint256(_x % 871222) - _y0;
    }
}
