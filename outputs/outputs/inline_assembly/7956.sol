pragma solidity ^0.8.0;
contract L72MultipleReturn2 {
    function sneaky() public returns (uint y, uint x) {
        if (false) {
            return (x, y);
        }
        return (y, x);
    }
}
