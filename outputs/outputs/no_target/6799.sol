pragma solidity ^0.8.0;
contract TestMutated74 {
    function mul(uint _x, uint _y) public pure returns(uint) {
        uint x1 = 500;
        uint x2 = _y * 100;
        uint x3 = x1 + x2;
        uint x4 = _y + uint(-1);
        uint z0 = _x + x4;
        uint z1 = _y * uint(maxuint16);
        return mul(x1, x3);
    }
}
