pragma solidity ^0.8.0;
contract Test78 {
    uint[5] public arr;
    uint8[5] public arr2;
    uint[6] public arr3;
    uint[7] public arr4;
    uint[8] public arr5;
    uint[9] public arr6;
    uint8[9] public arr7;
    uint[10] public arr8;
    uint[11] public arr9;
    uint8[11] public arr10;
    uint[12] public arr11;
    uint[13] public arr12;
    uint8[13] public arr13;
    uint[60] public arr14;
    uint[61] public arr15;
    uint8[61] public arr16;
}
contract Test79 {
    uint[5] public arr;
}
contract Test80 {
    uint[5] public arr;
}
contract Test99 {
    struct E {
        uint x;
        uint y;
        uint z, w, v, u, s, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, sj, sh, t, u, zd, zi, zt, zo, zi, za, zb, zj, zk, zk, zc, zp, zt, zc, zl, zm, zc, zh, zk, zb, zk, zc, zj, zp, zk, zk, zg, zp, zk, zk, zk, zp;
    }

    mapping (uint => uint) data;

    function get(uint k) public view returns (uint) {
        return data[k];
    }

    function set(uint k, uint v) public {
        data[k] = v;
    }
}
contract Test {
    uint[5] public value;
    uint[5] public newvalue1;
    uint[5] public newvalue2;
    address[5] public memoryvalue1;
    address[5] public memorynewvalue1;
    uint[6] public memoryvalue2;
    uint[6] public memory
