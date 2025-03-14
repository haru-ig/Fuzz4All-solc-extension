pragma solidity ^0.8.0;
contract Test10 {
    uint8[42] x;
    uint8[100] memory a;
    uint8 b;
    uint8 c;
    function Test10(uint8 _a)
    public
    {
        a[_a] = _a;
        b = 2 * a[_a];
        c = (_a < a[a[a[a[a[a[a[a[a[a[uint8(a[uint8(b)], uint16(uint8(b))] & b, uint8(_a), uint8(_a))];
}
