pragma solidity ^0.8.0;
contract Test1805H {
    uint16[] arr;
    uint8[] array2;
    uint8 x = 1;
    constructor() public {
    }
    function setX(uint8 number) public {
        x++;
    }
    function getX() public view returns (uint8) {return x;}
    function getArray2() public view returns (uint8) {
        if (x % 2!= 0)
            return arr[255];
        else
            return array2[255];
    }

}
