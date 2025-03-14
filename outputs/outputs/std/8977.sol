pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint8[2] array;
    constructor() {
        array = [0, 1];
    }
    function getMaxValue() public view returns (uint8) {
        return uint8(uint(array[1]));
    }
    function getHighestBit() public view returns (uint) {
        return uint(uint(1) << uint8(uint(array[1])));
    }
    function getLowestBit() public view returns (uint) {
        return uint(uint(1) << uint8(array[1]));
    }
    function changeMaxValue() public {
        uint8 tmp = array[1];
        array[1] = uint8(array[1] ^ 1);
        uint8 tmp2 = array[1];
        array[1] = uint8(array[1] ^ tmp2);
        bool tmp3 = bool(array[0]);
        array[0] = bool(uint(uint(1) << uint8(uint(array[0]))));
        array[1] = uint8(uint(array[1]) ^ tmp);
        bool tmp4 = bool(array[0]);
        array[0] = bool(tmp);
        array[1] = uint8(uint(uint(1) << uint8(array[1])) ^ tmp4);
        bool tmp5 = bool(array[0]);
        array[0] = bool(tmp2);
        array[1] = uint8(uint(uint(1) << uint8(array[1])) ^ tmp5);
    }
}
