pragma solidity ^0.8.0;
contract MultipleReturn8 {
    bool x;
    uint y;
    uint z;
    function multipleReturns9() public returns (uint x, uint y, uint z) {
        x = x*x + y*y;
        y = y + 1;
        return (x, y, z);
    }
}
