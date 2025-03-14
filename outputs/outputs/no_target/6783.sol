pragma solidity ^0.8.0;
contract TestMutated6 {
    function mul(uint _x, uint _y) public pure returns (uint) {
        uint x0 = _x * 20;
        uint x1 = 500;
        uint y0 = _y * 10;
        uint y1 = 10;
        uint t1 = add(x0, y1);
        uint t2 = add(t1, 100);
        return mul(x0, t2);
    }
}
