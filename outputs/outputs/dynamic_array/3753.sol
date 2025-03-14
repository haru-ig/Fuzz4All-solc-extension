pragma solidity ^0.8.0;
contract G {
    uint16[2][2][2] z;
    uint16[2] x;
    function setZ(uint16[2][2][2] memory z_) public {
        z = z_;
    }
    function setX(uint16[2] memory x_) public {
        x = x_;
    }
}
