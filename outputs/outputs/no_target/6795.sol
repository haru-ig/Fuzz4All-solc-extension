pragma solidity ^0.8.0;
contract TestMutated17 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x1 = 500;
        uint y0 = _y + 20;
        uint z0 = _x;
        uint z1 = mul(x1, _y - 20);
        return z0;
    }
}
contract TestMutated32 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x0 = _x * 100;
        uint z0 = _x * 2000;
        uint z10 = _x;
        uint mz0 = _x * _y;
        uint mz1 = mul(_x + 1000, _y - 1000);
        uint mz110 = _y;
        while (mz10 < _y) {
            z10 = _y;
            mz10++;
        }
        return _x;
    }
}
