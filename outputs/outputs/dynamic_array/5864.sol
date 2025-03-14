pragma solidity ^0.8.0;
contract Test1805I{
    uint16 x;
    constructor() public {
    }
    function set(uint16 number) public {
        x = number;
    }
    function get() public view returns (uint16) {return x;}
}
