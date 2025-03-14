pragma solidity ^0.8.0;
contract MultipleReturn9 {
    bool x;
    uint y;
    uint z;
    function multipleReturns8() public returns (bool r1, uint x, uint z, uint y) {
        uint xValue = 3;
        uint yValue = 11;
        uint zValue = 6;
        r1 = (xValue <= yValue);
        return (r1, xValue, zValue, yValue);
    }
}
