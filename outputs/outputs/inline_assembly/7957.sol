pragma solidity ^0.8.0;
contract L80MultipleReturn2 {
    uint x;
    uint y;
    address a;
    function sneaky() public returns (uint x, uint y, address a) {
        if (false) {
            return (x, y, a);
        }
        return (y, x, a);
    }
}
