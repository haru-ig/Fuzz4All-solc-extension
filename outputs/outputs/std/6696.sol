pragma solidity ^0.8.0;
contract Mutate57 {
    uint constant private k = 1000;
    uint[3] private x;
    constructor() public {
        x[0] = 0;
        x[1] = 0;
        x[2] = z;
    }
    function getX() public view returns ( uint[3] memory ) {
        return x;
    }
    function set(uint w) public {
        z = 1000;
    }
}
