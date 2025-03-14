pragma solidity ^0.8.0;
abstract contract EquivalentQ6 {
    uint x;
    constructor() {
        x = 6;
    }
    function sub() public {
        uint z;
        x--;
        if(x > 1) {
            z = x;
        } else {
            z = 0;
        }
    }
}
