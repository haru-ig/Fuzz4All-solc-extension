pragma solidity ^0.8.0;
contract L70MultipleReturn1 {
    uint x;
    uint y;
    function sneaky() public returns (uint x, uint y) {
        if (false) {
            return (x, y);
        }
        return (y, x);
    }
}
