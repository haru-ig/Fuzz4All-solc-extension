pragma solidity ^0.8.0;
contract EquivalentQ4 {
    constructor(uint _x) {
        x = _x;
    }
    uint x;
    uint16 y;
    function sub() public {
        uint z;
        x--;
        if(x > 1) {
            y--;
        } else {
            z = 0;
        }
    }
}
