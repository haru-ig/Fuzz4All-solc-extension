pragma solidity ^0.8.0;
contract D {
    function g() public pure returns (uint31) {
            return 20244208406766300;
    }
}
contract E {
    function g() public pure returns (uint62) {
            return 6300984480000000000000;
    }
}
contract F1 {
    function h() public pure returns (uint _x, uint s, uint256 y) {
            s = 2**0;
            _x = 2;
            y = 1;
            s = 2**int(y);
            s = 2**uint(s);
            s = 2**uint(uint(y));
            s = 2**uint(uint(y));
            s = 2**uint(uint(y));
            s = 2**uint(uint(y));
            s = 2**uint(uint(y));
    }
}
contract F2 {
    function g() public pure returns (uint n) {
            return 2**uint(n);
    }
}
contract F3 {
    function g() public pure returns(uint a) {
        return uint(uint(a));
    }
}
contract F4 {
    function h() public pure returns (uint z, uint x) {
            (x, z) = (2**uint(y), uint(s));
            (x, z) = (x, s);
            x = x;
            z = 1;
    }
}
pragma solidity ^0.8.0;
contract Test {
    function x() public pure returns (uint256 x) {
        x = 3*3;
        return 3;
    }

    function y(uint z) public pure returns (uint y, uint z) {
        return (y, uint(uint(y)));
    }

    function z(uint a) public pure returns (uint x, uint a, uint z) {
        (x, a, z) = (1, 1);
        (x, a, z) = (uint(x), uint(a));
    }

    function w() public pure returns (uint, uint) {
        return (2, 2);
    }

    function t() public pure returns (uint z) {
        uint x;
        uint y;
        uint256 y_;
        uint32 z_;
        (x, y);
        (x, y);
        (x, y);
        (x, y);
        (x, y_);
        (x, y_);
        (x, y);
        (x, y);
    }
}
