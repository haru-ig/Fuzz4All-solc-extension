pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input = 1 << 127;
    uint256 internal uint256Min = 0;
    uint256 internal uint256Max = 2 ** 255 - 1;
    uint256 public uint256MaxValue = uint256Min >> 1;
    uint256 public uint256MinValue = uint256MaxValue << 1;
    modifier m() {
        input = input * 5;
        _;
    }
    function callMe() m public {
        assert(bool((uint256(input)) < uint256MaxValue) && bool((uint256(input) | 2) < uint256MaxValue));
        assert(bool((uint256(input))));
        uint256 c = (uint256(input) * 2 + 3) / 2;
        assert(bool(c % 2 == 1) || bool(c % 2 == 0));
        assert(bool(c < uint256MaxValue));
        assert(bool(c <= uint256MaxValue));
        assert(bool(c < uint256Min));
        uint d = input + 250;
        assert(bool(d < uint256MaxValue));
        assert(bool(d <= uint256MaxValue));
        c = address(this).balance;
        assert(bool(1 > c) && bool(c > 950) && bool(c < uint256Max));
        assert(bool((c + 10000) / 15 == 5));
    }
}
