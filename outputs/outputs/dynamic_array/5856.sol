pragma solidity ^0.8.0;
contract Test1805R {
    uint16[][5] arr;
    uint16 y = 1;
    constructor() public {
    }
    function setX(uint16 number) public {
        y++;      }
    function getA() public view returns (uint16[] memory) {return arr;}
}
