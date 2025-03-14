pragma solidity ^0.8.0;
contract L70MultipleReturn3 {
    uint x;
    uint y;
    function sneaky() public returns (uint) {
        if (false) {
            return x | (~y);
        }
        return x & (~y);
    }
}
