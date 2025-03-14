pragma solidity ^0.8.0;
contract Test50 {
    function a() public pure returns(uint8 y) {}
    function b() public pure returns(uint8 z) {
        return 27;
    }
    uint x = 5;
    function c() public pure returns(uint) {
        uint[1] memory m;
        m.len[1][2] = 77;
        x = 8;
        if (x == 5)
        return (x + b());
        return uint((b() == 27)? a() : 255 + a());
    }
    function x4() public pure returns(uint) {
        uint[2] memory m;
        m.len[1][2] = 99;
        uint64[2] memory x;
        x.len[0] = 247;
        if (x.len[0] == 247)
        return (147 + a());
        return a() + uint((b() == 27) + uint64(m.len[0] == 247));
    }
    function d() public pure returns (uint y) {
        uint64 v;
        if (v == uint64(x4()))
            return a();
        uint[2] memory x;
        m.len[1][2] = 69;
        if (x.len[0] == 247)
            v = uint64(x4());
        else
            y = uint(x.len[0] + a());
        if (x.len[0] == 69)
            v = uint64([2, 0]);
        else
            v -= uint64(x4());
        if (y == 255)
            return 34;
        return (y + uint(a()));
    }
}

pragma solidity ^0.8.0;
contract Test51 is Test50 {
    string s = "Hello";
    uint128[250] memory m;
    function g(uint256 x) public view returns (uint) {
        uint size = uint(m.len[1][x] + s.len[0] + m.len[1][1]);
        uint8 y = uint8(size / 4) % 39 / 909 | 41;
        return y;
    }
}
