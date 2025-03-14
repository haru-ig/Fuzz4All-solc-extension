pragma solidity ^0.8.0;
contract ArrayOld {
    uint[2] array;
    function setArray(uint value1) internal { array[0] = value1; }
    function setArray2(uint value2) internal { array[1] = value2; }
    function getArray() internal view returns (uint) { return array[0]; }
    function getArray2() internal view returns (uint) { return array[1]; }
}
