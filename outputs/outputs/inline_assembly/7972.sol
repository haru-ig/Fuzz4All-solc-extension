pragma solidity ^0.8.0;
contract L57MultipleReturn2 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint z, uint y, uint x) {
        (bool success, uint z2, uint y2, uint x2) = (true, z, y, x);
        return;
    }
}
