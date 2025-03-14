pragma solidity ^0.8.0;
contract TestMutated20 {
    function add(uint x, uint) public pure returns (uint) {
        if (x > 0) { return 5 + x / 2; }
        revert();
    }
    function add2(uint x, uint y) public pure returns (uint) {
        if (x > y) { return 5 + x / 2 - y; }
        revert();
    }
    function add3(uint x, uint y) public pure returns (uint) {
        if (x > y) {
            uint res = 5 + x / 2;
            require(y == res, "y");
            return res;
        }
        revert();
    }
    function add5(uint x, uint y, uint z) public pure returns (uint) {
        if (x > y) {
            uint res = 5 + x / 2;
            require(y == res && res <= z, "yz");
            return res;
        }
        revert();
    }
    function add6(uint x, uint y, uint z, uint w) public pure returns (uint) {
        if (x > y) {
            uint res = 5 + x / 2;

            require(y == res && w < res, "wx");
            return res;
        }
        revert();
    }
    function add10(uint x, uint y, uint z, uint w, uint u) public pure returns (uint) {
        uint x10 = uint(uint64(x)>>10);
        if (x10 > y) {
            uint res = 5 + x / 2;
            require(y == res && u < res, "wu");
            return 10*res + ((uint(uint64(w)>>10)-x10)*3)/2;
        }
        revert();
    }
    function add20(uint x, uint y, uint z, uint w, uint u, uint v) public pure returns (uint) {
        uint x20 = uint(uint64(x)>>20);
        uint xmod64 = uint(uint192(x)>>(uint(uint64(x)>>32)));
        if (x20 > y) {
            uint x32 = uint(uint64(x)>>32);
            uint x4 = z;
            if (uint(uint64(v)>>44) == x32) {
                u *= 3; v *= 4;
                if (x4 < uint(uint64(x20)>>20)) {
                    uint
