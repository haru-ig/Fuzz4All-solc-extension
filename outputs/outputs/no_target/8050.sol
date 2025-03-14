pragma solidity ^0.8.0;
contract RestrictedMutator5 {
    uint u0;
    uint u1;
    uint s;
    uint i;
    uint x;
    uint x_;
    uint x_ = 0;
    constructor () public {
        u1 = u0;
        s /= x;
        uint overflow = x - x_;
        uint wrapped = s - overflow;
        require(wrapped!= 0);
        u0 = u1;
        u1 = u0;
        x = x_;
        x_ *= x_ % s;
        x_ %= (x_ / s) + 1;
    }
}

pragma solidity ^0.8.0;
contract RestrictedMutator6 {
    uint u0;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        s /= uint(uint160(-1));
        uint a0 = uint(uint160(-1));
        bool b0 = (uint160(a0) >= 0);
        uint wrapped = s - a0;
        while (b0) {
            wrapped += wrapped;
            a0 *= a0;
            a0 ^= 1;
            if (b0) {
                wrapped = wrapped - b0 % s;
            }
        }
        x = x_;
        x_ = x_ - a0;
      }
      function get() public returns (uint) {
        uint a1 = x_ + 3 - (x_ == x / uint(3)) % x_;
      }
}

function m3() external {
    uint y;
    y: y < 2? y : 17 + m2;
}
function m2() external { m3; }
function m1() external {
    uint y;
    y < 2? y : 17 + m0;
}
function m0() external { m1; }
