pragma solidity ^0.8.0;
contract Test1805F {
    constructor() public {

    }
    function setX(uint8 number) public {

      }
    function getX() public view returns (uint8) {

      }
}
contract Test1805G {
    uint[2][127][63] public array;
    uint x;
    constructor() public {
        array[0][0xbfff][0] = 127;
        x = 3;
    }
    function setX(uint[2][127][63] memory newArray) public {

      }
    function getX() public view returns (uint[2][127][63]) {

      }
}
contract Test1805H {
    uint[2][1][] internal array;
    uint x;
    uint8[128] internal array2;
    constructor() public {
        array2[0] = 0x128;
        array[0][0xbfff][0] = 127;
        array[0][0xbfff][1] = 127;
        x = 3;
    }
    function setX(uint[2][1][] memory newArray) public {

      }
    function getX() public view returns (uint[2][1]) {

      }
    function setX2(uint[2][128] memory newArray) public {

      }
    function getX2() public view returns (uint[2][128]) {

      }
}
