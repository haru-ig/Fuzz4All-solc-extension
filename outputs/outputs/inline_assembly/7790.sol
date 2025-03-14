pragma solidity ^0.8.0;
contract L12 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 5;
        y += 5;
    }
    function modify() public {
        x += 4;
        y += 4;
    }
}
