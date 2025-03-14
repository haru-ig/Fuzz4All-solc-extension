pragma solidity ^0.8.0;
contract Test1779 {
    uint16[] public array;
    uint8 public x;
    constructor() public {
        array = new uint16[](2);
        array[0] = 0;
        array[1] = 1;
        x = 1;
        array[0] >>= 1;
    }
    function getX() public view returns (uint8) {
        return safeGet(array, 0);
    }
    function setX(uint8 number) public {
        require(number == 0 || number == 1);
        safeSet(array, 0, number);
    }
    function indexOfX() public view returns (uint8){
        return indexOf(array, 0);
    }
    function safeGet(uint16[] memory arr, uint8 idx) internal pure {require(0 <= idx && idx < arr.length);return arr[idx];}
    function safeSet(uint16[2] memory arr, uint8 idx, uint16 val) internal pure {require(idx < arr.length);arr[idx]=val;}
    function indexOfXCheckTrue() public pure returns (uint8){
        return indexOfX(safeGet(array, 0));
    }
    function indexOfXCheckFalse() public pure returns (uint8){
        return indexOfX(safeGet(array, 1));
    }
}
