pragma solidity ^0.8.0;
contract MultipleReturn8 {
    uint y;
    uint z;
    uint w;
    bool r1;
    uint x;
    function multipleReturns9() public returns (uint x, uint y, uint z, bool r1) {
        uint xValue = 3;
        uint yValue = 11;
        uint zValue = 6;
        r1 = (yValue >= zValue);
        x = xValue;
        y = yValue;
        z = zValue;
        return (x, y, z, r1);
    }
}
