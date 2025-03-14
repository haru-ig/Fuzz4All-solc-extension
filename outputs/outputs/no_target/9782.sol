pragma solidity ^0.8.0;
import "../a";
contract b is a {
    function test(address sender)external view {
        Ia _a = Ia(address(this));
        assert(_a.test(sender) > 0);
    }
}

import "../a";
contract c is a {
    function test(address sender)external view {
        Ia _a = Ia(address(this));
        assert(_a.test(sender) == 0);
    }
}

contract c2 {
    event LogType(
        address indexed _from,
        uint _value,
        bytes1 _data
    );
    function f(address x)private view returns(uint8) {
        uint a;
        bytes2 _b;
        bytes3 _c;
        address _d = address(x);
        uint _e;
        uint8 _f;
        uint8[61][] memory _g;
        bytes4 _h;
        bytes5 _i;
        bytes6 _j;
        bytes7 _k;
        bytes8 _l;
        bytes9 _m;
        bytes10 _n;
        bytes11 _o;
        bytes12 _p;
        bytes13 _q;
        uint _r;
        uint8 _s;
        uint8 _t;
        uint8_[77][] memory _u;
        bytes32 _v;
        bytes32[20] memory _w;

        _c[_d - 0xC] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d - 0x4] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d - 0x8] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d - 0xE] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d + -0x10] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d + -0x14] = "\x00\x00\x00\x00\x00\x00\x00\x00";
        _c[_d + -0x18] = "\x00\x00\x00\x00\x00\x00\
