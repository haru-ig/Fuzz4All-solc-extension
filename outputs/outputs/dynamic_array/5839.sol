pragma solidity ^0.8.0;
contract Test1805F {
    uint16 public array;
    uint8 public x;
    address internal caller;
    constructor() public {
        array = 0;
        x = 1;
        x = msg.sender;
        x = address(0);
        array <<= 1;
    }
    function getX() public view returns (uint8) {
        return caller;
    }
}
