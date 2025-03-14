pragma solidity ^0.8.0;
contract L13 {
    uint y;
    uint x;
    constructor() public {
        x += 2 ether;
        y += x;
    }
    function modify() public {
        x += ether;
    }
}
