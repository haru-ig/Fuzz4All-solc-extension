pragma solidity ^0.8.0;
contract Test43_DynamicArray3 {
    uint[] public b = [1, 2, 3];
    constructor() {
        (uint _start, uint _end) = (0, b.length);
        for (; _end < 8; _end++) {
            (uint i, uint j) = (_a[i >> 1], _b.length == (uint(i >> 1) + 1)? _a[i >> 1] : _null());
        }
    }
    function _null() private pure returns (uint b) {}
    function _a() private view returns (uint[] memory)
    {
        uint _start = 0;
        uint _len = 0;
        (uint _end, ) = (_start, _len);
        for (; _end < 16; _end++) {
            uint i = (uint(_end) << 1) + _start;
            b = a;
            (_start, _end) = (i >> 1, a.length == (uint(i >> 1) + 1)? a[i >> 1] : b.length == (_null()? (uint(i >> 1) + 1) : b[_start]);
        }
        return a;
    }
    function _b() private view returns (uint[] memory)
    {
        uint _start = 0;
        uint _len = 0;
        (uint _end, ) = (_start, _len);
        for (; _end < 16; _end++) {
            uint i = (uint(_end) << 1) + _start;
            b = b;
            (_start, _end) = (i >> 1, a.length == (uint(i >> 1) + 1)? _a[a.length == (uint(i >> 1) + 1)? _a.length : _start] : b.length == (uint(i >> 1) + 1)? i : b[_start]);
        }
        return b;
    }
}
