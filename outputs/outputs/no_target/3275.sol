pragma solidity ^0.8.0;
contract modified {
    uint x  = 0;
    uint x_;
    uint z = x;
    function modified() public {
        x_ = 50;
        x_--;
    }
}

library SafeMath  {
    function mul(uint a, uint b) internal pure returns (uint) {
        uint c = a * b;
        assert(a == 0 || c / a == b);
        return c;
    }

    function div(uint a, uint b) internal pure returns (uint) {
        assert(b > 0);
        return a / b;
    }

    function sub(uint a, uint b) internal pure returns (uint) {
        assert(b <= a);
        return a - b;
    }

    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }

    function min(uint a, uint b) internal pure returns (uint) {
        return a < b? a : b;
    }

    function max(uint a, uint b) internal pure returns (uint) {
        return a < b? b : a;
    }
}
