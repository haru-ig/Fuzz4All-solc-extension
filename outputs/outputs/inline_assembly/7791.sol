pragma solidity ^0.8.0;
contract L12 {
    uint x;
    uint y;
    uint z;
    uint z2;

    constructor() public {
        x = 1 ether;
        z = 42;
        x += 4 ether;
        z2 += z;
    }
    function modify() public {
        x = 3 ether;
        z = 425;
    }
}
