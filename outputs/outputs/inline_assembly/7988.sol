pragma solidity ^0.8.0;
contract MultipleReturn7 {
    bool x;
    uint y;
    uint z;
    function multipleReturns9() public returns (uint x, bool r1, uint y, uint z) {
        uint xValue = 4;
        uint yValue = 5;
        uint zValue = 3;
        x = xValue;
        r1 = (xValue <= yValue);
        return (x, r1, yValue, zValue);
    }
}
