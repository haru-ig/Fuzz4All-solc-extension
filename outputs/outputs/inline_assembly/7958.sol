pragma solidity ^0.8.0;
contract L70MultipleReturn2 {
    uint x;
    uint y;
    function sneaky() public returns (uint, uint) {
        if (false) {
            return (x, y);
        }
        return (y, x);
    }
}
