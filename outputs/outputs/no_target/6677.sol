pragma solidity ^0.8.0;
contract Immutable6 {

    function immutable11(uint x) public returns(uint) {
        return 3 * ((x % 3200 + 1) * 10);
    }

    function immutable12(uint x) internal returns(uint) {
        uint s = x * 3200;
        return (3 * (10 * ((s >> 32) + s & 65535)) - 1);
    }

    function immutable13(uint x) internal returns(uint) {
        uint y = 10 * ((x >> 32) + x & 65535);
        return (3 * (y - 1) - (y >> 32));
    }

    function immutable2(uint i) public pure returns(uint) {
        return 3 * (i >> 32);
    }

    function immutable3(uint i) public pure returns(uint, uint) {
        return (i >> 32, i & 65535);
    }
}

pragma solidity ^0.8.0;
contract Checked5 is Immutable6 {

    function checked(uint x) internal pure returns(uint) {
        uint y = x * 3200;
        uint z = y + 1;
        uint w = z / 1_000;
        uint h = (4 * w + (z * (w + 1)) + 1) / 57372;
        uint t = h * 3200;
        uint ff = h ^ ((t - 1) >> 32);
        return 5 * h + (int256(ff) - (256 * ((t - 1)))) * 10_000;
    }
}

pragma solidity ^0.8.0;
contract Immutable7 {
    uint256 private _a;

    function immutable15(uint x) internal {
        uint256 y = x * 3200;
        uint256 z = (x -
