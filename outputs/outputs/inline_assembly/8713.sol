pragma solidity ^0.8.0;
contract Mutator {
    function modu() public pure returns (uint) {
        Modul storage m = Modul(0x01);
        return m.x;
    }
    function moduX(uint x_) public {
            Modul storage m = Modul(0x01);
            m.x = x_;
            addX();
    }
    function moduY(uint y_) public {
            Modul storage m = Modul(0x01);
            m.y = y_;
    }
}
