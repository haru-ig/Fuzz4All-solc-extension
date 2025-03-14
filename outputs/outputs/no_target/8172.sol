pragma solidity ^0.8.0;
contract Mutated4b {
    uint x = 10 * uint160(200) / uint160(200) * uint160(300);
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated4c {
    uint x = 100 * ~uint160(200) +!uint160(0);
}
contract Mutated4d {
    uint x = 100 * (!uint160(0)) ^ 1;
}
contract Mutated4e {
    uint x = 5 * (int160(200) * uint160(200)) + -10 / 5;
}
contract Mutated4f {
    uint x = 5 * uint160(200 * 7) + (int160(1) & ~uint178(0)) / 5;
}
contract Mutated4g {
    uint x = 5 / (int160(200) * uint160(0)) + uint160(2) / 5;
}
contract Mutated4h {
    uint x = uint160(0) & (int160(200) * uint160(0)) + uint160(2) / 5;
}
contract Mutated4i {
    uint x = 10 + uint160(2) + (7 * uint160(5)) + uint160(6) * uint160(5);
}
contract Mutated4j {
    uint x = (uint160(0) + 7) << 10 + (uint160(0) + 7) >> ((uint160(0) + 7) >> 1));
}
contract Mutated4k {
    uint x = uint160(0) ^ (7 + int160(8 + int160(int160(1) &!uint178(4))))) >> 10;
    uint y = (uint160(7) && 4 ||!4 && 2) / 86 + uint160(4);
    uint z = x >> 10 + ((uint160(0) * (((!uint178(6))) < ((3 - 5)))) & ((uint160(0) << (10 + -1)) | ((!uint178(2)) * ((6 + (uint178(1)) & 3))))));
}
