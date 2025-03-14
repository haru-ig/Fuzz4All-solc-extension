pragma solidity ^0.8.0;
contract Test1804F {
    uint16 public array;
    uint8 public x;
    bytes16 public receiverA;
    bytes16 public receiverB;
    constructor() public {
        array = 0;
        x = 1;
        receiverA = abi.encodePacked(msg.sender);
        receiverB = abi.encodePacked(0);
        array >>= 1;
    }
    function setX(uint8 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint8) {return x;}
}
