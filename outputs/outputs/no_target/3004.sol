pragma solidity ^0.8.0;
contract third10 {
    function get() public view returns (address) {
        return address(10);
    }
}
contract third11 {
    function get() public view returns (uint256) {
        return 0x4000;
    }
}
contract third12 {
    bool b = true;
    uint256 y = 2 ** 32;
    uint256 z = 0;

    function log0(uint256 x) constant returns (uint256 x2) {
        if (b) {
            x2 = x * x;
        } else {
            x2 = x;
        }
        return x2;
    }

    function log1(uint256 x) constant returns (uint256 x2) {
        if (y!= 0) {
            x2 = x + x;
        } else {
            x2 = x;
        }
        return x2;
    }

    function log2(uint256 x) constant returns (uint256 x2) {
        if (y == 0) {
            x2 = x;
        } else {
            x2 = x * 2;
        }
        return x2;
    }

    function log3(uint256 x) constant returns (uint256 x3) {
        if (y == 0) {
            x3 = x;
        } else {
            x3 = x * 2;
        }
        return x3;
    }

    function log4(uint256 x) constant returns (uint256 x4) {
        if (y!= 0) {
            x4 = x + x + x;
        } else {
            x4 = x;
        }
        return x4;
    }

    function log8(uint256 x) constant returns (uint256 x8) {
        if (x!= 0) {
            x8 = b? x * x : x / x;
        } else {
            x8 = 0xfffffffffffffffffffffffffffffffffffffffefffffffc;
        }
        return x8;
    }
}
contract third13 {
    bool b = true;
    uint256 y = 2 ** 32 - 1;
    uint256 z = 0;

    function log0(uint256 x) constant returns (uint256 x2) {
        if (b) {
            x2 = x * x;
        } else {
            x2 = x;
        }
        return x2;
    }

    function log1(uint2
