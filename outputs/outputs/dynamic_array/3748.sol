pragma solidity ^0.8.0;
contract F {
    uint16[1] x;
    function setX(uint16[1] memory x_) public {
        x = x_;
    }
}
