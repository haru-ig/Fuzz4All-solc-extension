pragma solidity ^0.8.0;
contract TestMutated73 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        int x1 = 13141592;
        int y0 = _y * -8;
        int y1 = -1000;
        int z0 = x1 - 2000;
        int z1 = _y - 500;
        return mul(x1, y0 + -100);
    }
}
pragma solidity ^0.8.0;
contract TestMutated74 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x1 = 1;
        uint y0 = _y * 1;
        uint y1 = _y * 2;
        uint z0 = x1 * y0;
        uint z1 = y0 + 2 * _x;
        int x2 = 5;
        int y2 = _y * -2;
        int z2 = x1 / (x2 - x1);
        int z3 = x2 + y1 - 2;
        int z4 = x1 - 2 * x2;
        int z5 = x2 + y2 + -2;
        int z6 = 1 + 100;
        return mul(x2, y2 / _x);
    }
}

pragma solidity ^0.8.0;
contract TestMutated75 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x1 = 1;
        uint y0 = _y * 100;
        uint y1 = 20;
        uint z0 = x1 % (x1 - 20);
        uint z1 = 100 % _y;
        uint z2 = 2 * _x - _y % _x * 4;
        x1 = z0 % x1;
        x1 = x1 + -z1;
        x1 = x1 % _x;
        x1 = x1 + _y + -1;
        x1 = 4 / (2 + _x);
        x1 = _y - -_x % _x;
        uint x2 = 7;
        uint y2 = _y - _y * 300;
        z0 = x2 - -x1;
        int x3 = 24;
        int y3 = _y * _y;
        z0 = _x + x3 - _x * _y;
        z
