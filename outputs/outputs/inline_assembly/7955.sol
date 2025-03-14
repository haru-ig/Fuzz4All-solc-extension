pragma solidity ^0.8.0;
contract L70MultipleReturn2 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint x, uint y, uint z) {
        if (false) {
            return (x, y);
        }
        return (y, x);
    }
}
