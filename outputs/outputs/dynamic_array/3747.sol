pragma solidity ^0.8.0;
contract D is E {
    uint16[11][10] a;
    uint16[256][32][31] b;
    function setY(uint16[1] storage a_) public {
        a = a_;
    }
}
