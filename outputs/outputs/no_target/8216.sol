pragma solidity ^0.8.0;
contract Mutated5 {
    uint8 private x;
    function f() public view {
        assert(m() >= (2 ** (256 + 1)));
        uint8256 a = m();
        require(a > -0x11);
        assert(a >> 1 == 0);
    }
    function m() public pure returns (uint8256) {
        uint8256 z;
        (z, z) = (x, 0x00ff);
        (z, z) = (z, 0xf000);
        (z, z) = (z, 0x0000f0);
        uint8256 y;
        (y, y) = div3(1, 2, 3);
        uint8256 w;
        (w, w) = (x, 0xffff);
        (w, w) = (w, 0x0000);
        return (x * x + w);
    }
    function div3(uint256 y, uint256 z, uint256 w) public pure returns (uint8256, uint8256) {
        uint256 x = (((z * y) & z) * (w & w)) / (y + z);
        return (uint8(x >>> 0), uint8(y - z * ((x + 0xFFFFFF) / z)));
    }
}
