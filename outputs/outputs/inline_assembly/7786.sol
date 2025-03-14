pragma solidity ^0.8.0;
contract L13 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x += 3 ether;
        y += 4 ether;
        z += 5 ether;
    }
    function add(uint _amount) public {
        x += _amount;
    }
}
