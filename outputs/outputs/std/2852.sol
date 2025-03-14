pragma solidity ^0.8.0;
contract EquivalentArithmetic23 {
    uint8 e;
    uint16 t;
    uint32 u;
    int8 g;
    uint64 n;
    uint32 x;
    uint64 w;
    uint128 v;

    uint32[] a;
    uint64[20][1][3] b;
    bytes1[] c;

    function f(uint a) external {
        u = a;
        e = u + 0x1000;
        t = u + 0x100000000;
        u = u + 0x10000000000000000;
        int128 c;
        uint8 d;

        d = uint8((uint256(0x12345678) >> u) + 0x50);
        d = uint8(uint256(uint8(u) >> uint256(u)));
        d = uint8(uint256(uint8(uint8(uint256(uint256(uint256(uint256(u)))))))) >> uint256(u));
        t = uint16(int8(t) + int128(e)) - 0x7fff;
        do {
            int128 g;
            g = uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111))
                * uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111)) * uint128(e & uint256(111))
                - uint128((e >> uint256(220)) & uint256(111));
            c = c + g;
            e = e >> uint256(192);
        } while (e!= 0);

        d = uint8((int8(215) << uint256(uint8(u))) +
            (int8(1) << uint256(uint8(u))));

        m = uint128(uint10(t) * uint10(u)) +
            (uint256(1) << uint256(uint8(u)) - 1);


        do {
            d =
