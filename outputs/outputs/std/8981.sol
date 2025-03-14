pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint8 a;
    mapping(uint8 => uint32) b;
    uint128[] c;
    uint8[10] d;
    uint128[3] e;
    constructor() {
        a = 10;
        b[1] = 0;
        c = [0, 1, 2, 3];
        d = [0, 1, 2, 3, 4, 5, 6, 7];
        e = [1000, 200, 10000];
    }
    function getMaxByte() public pure returns (uint8) {
        return uint8(a);
    }
    function getHighestByte() public pure returns (uint) {
        return uint(a);
    }
    function getLowestByte() public pure returns (uint) {
        return uint(a);
    }
    function addTwo() public {
        a++;
    }
    function addMax() public {
        a = a - 1;
    }
    function subtractOne() public {
        a--;
    }
    function addBytes() public {
        uint8[] memory tmp = [2, 3, 4];
        array[a] = tmp[a];
    }
    function arrayEqualsOne() public pure returns (bool) {
        uint8[] memory b;
        b = array;
        if (b == [1, 2, 3]) {
            return true;
        }
        return false;
    }
    function arrayEqualsTwo() public pure returns (bool) {
        uint8[] memory b;
        b = array;
        b = [b[1]];
        if (b == [1, 2, 3]) {
            return true;
        }
        return false;
    }
    function getHighestUInt() public view returns (uint) {
        return uint(uint16(a));
    }
    function setValue() public {
        a = 10;
    }
    function arrayLength() public pure returns (uint) {
        return uint(array.length);
    }
    function arrayElement() public pure returns (uint) {
        return uint(array[0]);
    }
    function value() public pure returns (uint8) {
        return uint8(a);
    }
    function add(uint8 valueToAdd) public {
        a = a + valueToAdd;
    }
    function addSub(uint8 valueToAdd) public {
        a = a - valueToAdd
