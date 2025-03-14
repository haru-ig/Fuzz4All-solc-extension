pragma solidity ^0.8.0;
contract L68MultipleReturn2 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint, uint z, uint y) {
       if (false) {
           return (x, z, y);
       }
        return (x, y, z);
    }
}
