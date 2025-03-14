pragma solidity ^0.8.0;
contract MultipleReturn6 {
    bool x;
    uint y;
    uint z;
    function multipleReturns8() public returns (bool r1, uint z, uint y, uint x) {
        uint xValue = 3;
        uint yValue = 11;
        uint zValue = 6;
        r1 = (xValue <= yValue);
        return (r1, zValue, yValue, xValue);
    }
}
