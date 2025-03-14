pragma solidity ^0.8.0;
contract Emulator6 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x = 1;
        y = 2;
    }
    function init() public {
        z;
        z = y + x;
        z;
    }
    function add() public {
        z = 0;
        if(y) {
            z += 1;
            z += 2;
            z += 3;
        } else {
            z += 4;
        }
        z;
    }
}
