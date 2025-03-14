pragma solidity ^0.8.0;
contract Mutater130 {
    uint128 public immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function add(uint128 x) public view returns (uint128) returns_or_revert {
        return;
    }
    function div(uint128 x, uint128 y) public view returns (uint128) returns_or_revert {
        uint128 ret;
        if (y == 0) {
            revert();
        }
        ret = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
}

pragma solidity >=0.5.5;
contract Mutater131 {
    uint public immutable _x;
    constructor(uint _x) {
        _x;
    }
    function add(uint x) public view returns (uint) {
        return x;
    }
    function div(uint x, uint y) public view returns (uint) {
        uint ret;
        if (y == 0) return 0;
        ret = (x + (y >> 1)) / y;
        uint xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
}
