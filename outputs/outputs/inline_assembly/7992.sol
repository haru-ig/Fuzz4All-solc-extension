pragma solidity ^0.8.0;
contract MultipleReturn7 {
    bool x;
    uint y;
    uint z;
    function multipleReturns9() public returns (uint x, bool r1, uint y, uint z) {
        uint xValue = 7;
        uint yValue = 4;
        uint zValue = 0;
        x = xValue;
        r1 = (false);
        y = yValue;
        return (x, r1, yValue, zValue);
    }
}
