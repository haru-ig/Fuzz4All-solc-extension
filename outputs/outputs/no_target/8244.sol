pragma solidity ^0.8.0;
contract Mutated2a {
    uint constant ONE = 1;
    uint constant ZERO = 0;
    uint constant MAX = type(uint).max;
    uint constant TWO = 2;
    uint constant MINUS_TWO = MAX - 2;
    uint constant MAX2 = max(ONE, TWO) - 1;
    uint constant MINUS_ONE = ONE - 1;
    uint constant MINUS_TWO2 = MINUS_ONE - MINUS_TWO - 1;
    uint constant ZEROTO_ONE = ZERO == ONE? MINUS_TWO2 : MAX2;
    uint constant ONE2TO_TWO = ONE == TWO? ONE + ONE2TO_TWO : type(uint).max;
    uint constant ONE2TO_TWO2 = ONE == TWO? type(uint).max : ONE + ONE2TO_TWO;

    uint ONEMAX = MAX == ONE? ONE : MAX;

}
