pragma solidity ^0.8.0;
contract D {
    uint public x;
    bytes memory y;
    constructor(uint _x,string memory _y) public {
         x = _x;
         y = bytes(_y);
     }
}
