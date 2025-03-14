pragma solidity ^0.8.0;
contract Mutate78 {
    uint256 x_;
    uint50 y_;
    constructor() public {
        x_ = 5;
        y_ = 98;
    }
    function modify(uint j,uint k) public {
        x_ = x_+k;
        uint x1 = x_.toUInt256();
        uint64 y64 = y_.toUInt64();
        uint128 y128 = y_.toUInt128();
    }
    function check() public view returns (uint256) {
        return x_+y_;
    }
}
