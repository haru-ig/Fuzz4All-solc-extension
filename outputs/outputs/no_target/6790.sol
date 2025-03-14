pragma solidity ^0.8.0;
contract TestMutated72 {
    function mul(int _x, uint _y) public pure returns (int) {
        int x1 = 100;
        uint y0 = _y << _x + 10000;
        uint y1 = 11000;
        int z0 = x1;
        uint z1 = _y;
        int x2 = x1;
        int y2 = y1 - _x;
        return mul(x2, y2);
    }
}

pragma solidity ^0.8.0;
contract TestMutated72 {
    function mul(int _x, uint _y) public pure returns (int) {
        int x1 = 500;
        uint y0 = _y * 100;
        uint y1 = 3000;
        uint z0 = x1;
        uint z1 = _y;
        return mul(x1, y0 - 20);
    }
}
