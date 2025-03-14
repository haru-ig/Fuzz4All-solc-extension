pragma solidity ^0.8.0;
contract Mutate2 {
    uint private immutable a = 3;
    uint private immutable b = 5;
    uint constant i = 7;
    uint private immutable c = 9 * 256 + 13;
    uint private immutable d = 22 * 256 * i + 13 * i / i * i + (32 / 4) * (1 / 256);
    uint128 private immutable e = a * 2 ** 8;
    uint128 private immutable f = b + 2 * (b + i)* b + ((b * b) + 2) * 2 * i * b / b * (2 ** ((i - b) / (b + 2))));
    uint128 private immutable g = e * (b / 4 + 2) + b / (d + b) - b / 3 / (b + j) + b / (6 * i) - (1 << 103);
}
