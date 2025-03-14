pragma solidity ^0.8.0;
contract Test1805H {
    uint16[] arr;
    uint8 x = 1;
    constructor() public {
    }
    function setX(uint8 number) public {
        x++;
        arr.push(x);
    }
    function getX() public view returns (uint8[]) {
        return new uint8[](arr.length);
    }
}
