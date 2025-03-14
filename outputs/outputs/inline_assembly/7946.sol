pragma solidity ^0.8.0;
contract L76MultipleReturn3 {
    uint _x;
    uint _y;
    function sneaky() public returns (uint, uint) {
        if (true) {
            return (_x, _y);
        }
    }
    function anotherFunction() public {
        (uint x, uint y) = sneaky();
        uint z = (x > y? x : y);
    }
}
