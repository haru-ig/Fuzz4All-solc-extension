pragma solidity ^0.8.0;
contract Test1805E {
    uint16 internal arr;
    uint8 public x;
    uint[] public array;
    constructor() public {
        uint[] memory a = new uint[](5);
        a = bytes4(keccak256('0x04'));
        x = 1;
        arr = 0;
    }
    function setX(uint8 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint8) {return x;}
    function testMemory(uint8 a, uint[] memory b) public {
        array = a.toString().toUint(10);
        require(b.length == 5);
        for (uint i = 0; i < b.length; i++)
            require(b[i] == uint(i+1));
    }
}
