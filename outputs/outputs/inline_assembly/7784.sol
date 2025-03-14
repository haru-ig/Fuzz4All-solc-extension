pragma solidity ^0.8.0;
contract L12 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 2 ether;
        y += 3 ether;
        z += 4 ether;
    }
    function modify() public {
        x += 2 ether;
    }
}
