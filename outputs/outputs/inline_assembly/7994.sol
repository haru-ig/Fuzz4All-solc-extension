pragma solidity ^0.8.0;
contract MultipleReturn8 {

    uint x;
    bool y;
    uint z;
    function multipleReturns9() public returns (bool r1, uint x, uint y, uint z) {
        uint xValue = x;
        bool yValue = y;
        uint zValue = z;
        x = xValue;
        y = yValue;
        z = zValue;
        return (r1, x, y, z);
    }
}
