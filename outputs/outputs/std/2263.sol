pragma solidity ^0.8.0;
abstract contract EquivalentQ7 {
    uint x;
    uint y;
    constructor() {
        x = 6;
        y = 7;
    }
    function add() public {
        x++;
        uint z;
        if(x > y) {
            z = x;
        } else {
            if(x < y) {
                z = y;
            } else {
                z = 0;
            }
        }
    }
}
