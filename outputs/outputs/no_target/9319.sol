pragma solidity ^0.8.0;
contract semanticallyEquiv12 {
    int constant MIN = -32000;
    uint constant N = 10 ** 8;
    int function log10(uint value) public pure returns (int) {
        uint power = 10 ** uint(value);
        return int(power);
    }

    bool function satisfiesRange(uint value) public pure returns (bool) {
        return value >= uint(MIN) && value <= uint(n);
    }
}
