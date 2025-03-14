pragma solidity ^0.8.0;
contract Test1805II {
    uint16[] storage x;
    constructor() public {
        x.push(775783);
    }
    function set(uint16 number) public  {x[0] = number;}
    function get() public view returns (uint16) {return x[0];}
}
