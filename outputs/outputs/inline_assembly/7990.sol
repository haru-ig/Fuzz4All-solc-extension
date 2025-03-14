pragma solidity ^0.8.0;
contract MultipleReturn8 {
    uint z;
    uint y;
    uint x;
    uint w;
    function multipleReturns9() public returns (uint x, uint y, uint z) {
        uint xValue = 4;
        uint yValue = 5;
        uint zValue = 3;
        z = zValue;
        y = yValue;
        w = xValue;
        x = xValue;
        return (x, y, z);
    }
}
