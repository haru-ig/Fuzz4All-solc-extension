pragma solidity ^0.8.0;
contract Test1805II{
    uint16 x;
    constructor() public {
    }
    function set(uint16 number) public {
        x = 83 / number;
    }
    function get() public view returns (uint16) {return x;}
}
