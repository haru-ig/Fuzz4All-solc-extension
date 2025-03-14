pragma solidity ^0.8.0;
contract Test1865I{
    uint16 x;

    constructor() public {
    }
    function set(uint16 number) public {
        x = number;
        x = 3;
    }
    function get() public view returns (uint16) {return x;}
}
