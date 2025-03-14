pragma solidity ^0.8.0;
contract L70MultipleReturn3 {
    uint x;
    uint y;
    bool[2] private b;
    uint w;
    uint z;
    function sneaky() public pure returns (uint, uint) {
        if (false) {

            y = b[0];
            x = b[1];
            return (y, x);
        }
        return (y, x);
    }
}
