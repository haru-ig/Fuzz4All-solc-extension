pragma solidity ^0.8.0;
contract D {
    struct S2 { uint256 x; uint256 y; uint[5] z; }
    mapping(uint => S2) map;
    uint z;
    function setZ(uint z_) public {
        z = z_;
    }
}
