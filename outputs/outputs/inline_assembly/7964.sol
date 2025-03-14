pragma solidity ^0.8.0;
contract L71MultipleReturn3 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint z, uint y, uint x) {
        if (false) {
            return (y, x, z);
        }
        return (x, z, y);
    }
}
