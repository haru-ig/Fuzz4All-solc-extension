pragma solidity ^0.8.0;
contract L13 {
    uint x = 9;
    uint y;
    uint z;
    constructor() public {
        y++;
    }
    function modify() public {
        if (y > z) { x++; }
    }
}
