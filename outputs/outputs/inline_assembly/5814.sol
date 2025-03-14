pragma solidity ^0.8.0;
contract MutatedBlock3Mutation88 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    uint internal _h;
    uint internal _f;
    uint internal _d;
    uint internal _c;
    uint internal _g;
    function test4() public returns (uint) {
        uint temp = block.number;
        _x += _y;
        _a += _b;
        _b += (_c = _f - (_g = _a + 1), _h > _f << _b >> _a? 0 : _y) << _b >> _a;
        _f += _d;
        _d += (_h += ((_c += _a) > (_f += 1))) > _a >> 1? 0 : _g;
        return block.number - (_y += ((_x += 0) == (_y + _b >> 1)? 0 : _d)) |
            (_y *= ((_g -= (((_h *= (_y >> 1)) == (_y >> 1))? 1 : _f) & 0x924115B1A0181912477926DABF950583796EA2A) |
                 (_y -= (_b = (_g += 1)) & (0x298F)) |
                 (((_d >> 25) + (_g + 1x) - 1) & (((_y << 7) | 0xC9C6AF98400EBBBF22F0A7702AC7755CD1946B36) * _g) - _g)))) &
            0x9678E549B3082CA5C6407E892F8254B54A2FB271 + temp;
    }
}
