pragma solidity ^0.8.0;
contract Mutator15 {
    uint _ret;

    struct s {
      uint x;
      uint z;
    }
    s storage arr;

    function set(uint k) public {
        arr.x = k;
        arr.y = 2*k;
        arr.x++;
        arr.y *= k;
        arr.x--;
        arr.x += k;
        arr.y /= k;
        arr.x &= k;
        uint z = 2*k;
        arr.y += z;
        arr.y -= z;
        arr.y ^= k;
        arr.y += 3*k;
        arr.x >>= k;
        arr.x <<= k;
        arr.x <<= k;
        arr.x >>= k;
        arr.y -= 2*k;
        arr.x += 2*k;
        arr.x |= k;
        arr.y -= k;
        arr.y &= k;
        arr.x |= k;
        uint x = k;
        arr.x &= x;
        x |= 90;
        x = x*k;
        arr.x << x;
        x |= 240;
        arr.x ^= x;
        arr.y = arr.x;
        arr.y &= k;
        arr.y = arr.y || x;
        arr.y <<= k;
        arr.y >>= k;
        arr.y <<= k;
        arr.y >>= k;
        arr.x /= x;
        arr.x++;
    }

    function get(uint k)
        public
        view
        returns(uint x, uint y, uint z)
    {
        return (arr.x, arr.y, arr.x);
    }
    function test()
        public
    {
        set(73);
        uint[26] memory _memory;
        uint _x = 21;
        _x = (_x | 100) + (_x << 2) + (_x >>> 2) - 10;
        _x *= 17;
        uint _y = _x | (_x >> 1);
        x = _y - 7;
        _memory[_y >> 2] = (_y += 3) * _x;
        _memory[_y >> 2] += (_y += 2);
        _memory[_y >> 2] += (uint160(uint(keccak256(abi.encodePacked((_x >> 1).
