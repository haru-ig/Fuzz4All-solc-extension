pragma solidity ^0.8.0;
contract A {
    uint public f1;
    uint public f2;
    uint public f3;
    uint f4;
    uint public f5;
    uint public f6;
    uint f7;
    uint public f8;
}
contract B {
    function bar(uint _a) public pure returns (uint b) {
        b = uint(uint128(_a) << 16);
    }

    function bar2(uint128 _a) public pure returns (uint256 b) {
        b = uint(uint128(_a) << 16);
    }

    function bar3(uint _a) public pure returns (uint _b) {
        _b = uint128(_a) << 16;
    }

    function bar4(uint _a) public pure returns (uint256 _b) {
        _b = uint128(_a) << 16;
    }

    function bar5(uint _a) public pure returns (uint _b) {
        uint256 x = 0;
        _b = uint(uint256(_a) << 16);
    }

    function foo() public pure returns (uint _a) {
        uint x = uint256(address(this));
        if (x.mod(10) == 5) {
            return uint(uint256(address(this)) & 1337);
        }
        return __mul(uint8(0) + 1, 20010, 999);
    }

    function __mul(uint _a, uint _b, uint _c) private pure returns (uint0 _d) {
        uint0 u0 = int0(_a);
        uint0 u1 = int0(_b);
        uint0 u2;
        uint0 x;
        int i = int0(u0);
        uint0 ui;
        while ((i | u1)!= int0(uint0(0))) {
            if ((c(uint0(0), i) & c(uint0(1), u1)!= 0) == true) {
                if (u0!= uint0(0)) {
                    if ((i = sub(c(c(uint0(1), uint0(0)), u1), i)) == int0(uint0(0))) {
                        u0 = add(u0, 1);
                    } else {
                        _d = add(_d, 1);
                        _d = uint0(sub(uint0(1), _d));
                        u0 = c(sub(uint0(1), u0), uint0(0));
                    }
                } else {
                    u0 = add(u1, 1);
                }
            } else {
                if (u1!= uint0(0)) {
                    if ((i = add(c(u1, c(uint0(0), r(i))), b(i))) == int0(uint0(0))) {
                        ui = add(
