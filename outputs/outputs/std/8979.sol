pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint8 array;
    constructor() {
        array = uint8(0);
    }
    function getMaxValue() public view returns (uint8) {
        return uint8(array);
    }
    function getMaxValueTwo() public view returns (uint8) {
        return uint8(array ^ 1);
    }
    function getLowestValue() public view returns (uint8) {
        return uint8(array << 6);
    }
    function getLowestValueTwo() public view returns (uint8) {
        uint16 tmp = uint8(array >> 10);
        uint16 min = uint8(tmp >> 10);
        uint16 tmp2 = tmp >> (1 - min - 6),
            pow = uint64(uint8(bits(min, tmp2, tmp4)).pow(min));
        uint8 tmp3 = array + 1,
            num = uint8(tmp) - 4 * min - 1,
            tmp4 = num >> 10,
            minTwo = uint8(tmp4 >> 10);
        return num - min + minTwo + pow - 1;
    }
    function getMaxIntWithModulus() public view returns (uint8) {
        uint8 lowest8;
        uint x = getMaxValue();
        uint bits = bits(x.mul(7)).pow(24);
        uint8 a = 0;
        uint a2;
        for (uint8 high = 0; high < 16; high++) {
            low = highestBit(a);
            a2 = bits.mul(a);
            lowerBit = getLowestValue();
            if (a2 > 256 || a2 < ((x / (1 << 1)) * lowerBit)) {
                low = 16;
                break;
            }
            a <<= 1;
            low--;
        }
        uint8 bitCount = x >>> 16;
        return a | ~bitCount + (1 & (x - 1)) - low;
    }
}
