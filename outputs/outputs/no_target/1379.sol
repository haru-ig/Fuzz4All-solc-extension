pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract Mutate_0022 {
    uint56 _x; uint56 _y; uint56 _x1; uint56 _x2; uint56 _x3; uint56 _x4; uint56 _x5; uint56 _x6; uint56 _y1; uint56 _y2; uint56 _y3; uint56 _y4; uint56 _y5; uint56 _y6; uint56 _u; uint56 _max; uint56 _max_y;
    constructor(uint56 _a, uint56 _b) public {
        _x = _a; _x1 = _a; _x2 = _a; _x3 = _a; _x4 = _a; _x5 = _a; _x6 = _a; _y = _b; _y1 = _b; _y2 = _b; _y3 = _b; _y4 = _b; _y5 = _b; _y6 = _b; _u = _a / _b; _max = _a;
        _max_y = _y;
        while (_x >= _y) {
            uint56 c = _x / (_y);
            _y = _x - (_y * c);
            _x = c;
        }
        if (_y < _max_y) { uint56 y; do { y = _y; _y = (_y * _y) - (_x << 16); _x <<= 1; } while ((_y < _max_y) && (_y > 0)); _y = y; }
    }
}
contract Mutate_0023 {
    uint56 _x; uint56 _y; uint56 _x0;
    function F (uint56 a) public { _x = a; }
    constructor (uint56 _) public { _y = uint56(uint160(address(this))); _x0 = _x; }
    function F (uint56 a) public { uint56 b = _x; uint56 c; for (uint56 i=0; i < uint56(uint160(address(this))); i++) { c = a + ((i % uint56(uint160(address(this))) > ((i % uint56(uint160(address(this))) - 7)))) * 13); } c = _y + ((i % uint56(uint160(address(this))) > ((i % uint56(uint160(address(this))) - 7)))) * 13); }
    function
